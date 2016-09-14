<?php
require 'base_data_abstraction_class.php';
class data_abstraction extends base_data_abstraction
{
    function sanitize_new(&$param)
    {
        $lst_error = '';
        require_once 'validation_class.php';
        require_once 'char_set_class.php';
        $validator = new validation;

        $arr_error = array();

        //Check if some required fields are left blank.
        foreach($this->fields as $field_name=>$field_details)
        {
            $label    = $field_details['label'];
            $required = $field_details['required'];
            if($required)
            {
                init_var($param[$field_name]);
                //$lst_error .= $validator->check_if_null($label, $param[$field_name]);

                $error = $validator->check_if_null_new($label, $param[$field_name]);
                if($error == '')
                {
                    //Skip
                }
                else
                {
                    $arr_error[$field_name] = $validator->check_if_null_new($label, $param[$field_name]);
                }
            }
        }

        foreach($param as $unclean=>$unclean_value)
        {
            if(isset($this->fields[$unclean]))
            {
                $length               = $this->fields[$unclean]['length'];
                $data_type            = $this->fields[$unclean]['data_type'];
                $attribute            = $this->fields[$unclean]['attribute'];
                $control_type         = $this->fields[$unclean]['control_type'];
                $label                = $this->fields[$unclean]['label'];
                $char_set_method      = $this->fields[$unclean]['char_set_method'];
                $char_set_allow_space = $this->fields[$unclean]['char_set_allow_space'];
                $extra_chars_allowed  = $this->fields[$unclean]['extra_chars_allowed'];
                $trim                 = $this->fields[$unclean]['trim'];
                $valid_set            = $this->fields[$unclean]['valid_set'];

                //Apply trimming if specified.
                //Triming should be applied to $unclean_value for purposes of further filtering/checking,
                //and then also applied to $param[$unclean] so as to actually affect the POST variable.
                if(strtolower($trim) == 'trim')
                {
                    $unclean_value = trim($unclean_value);
                    $param[$unclean] = trim($unclean_value);
                }
                elseif(strtolower($trim) == 'ltrim')
                {
                    $unclean_value = ltrim($unclean_value);
                    $param[$unclean] = ltrim($unclean_value);
                }
                elseif(strtolower($trim) == 'rtrim')
                {
                    $unclean_value = rtrim($unclean_value);
                    $param[$unclean] = rtrim($unclean_value);
                }

                //Check length
                if($length > 0)
                {
                    if(strlen($unclean_value) > $length)
                    {
                        //$lst_error .= "The field '$label' can only accept $length characters.<br>";
                        $arr_error[$unclean] = "This field can only accept $length characters.";
                    }
                }

                $validator = new validation;
                //If there is a set of valid inputs, check if 'unclean' conforms to it.
                if(count($valid_set) > 1)
                {
                    if($unclean_value == '')
                    {
                        //No need to check because no value was submitted.
                    }
                    else
                    {
                        $validator->check_data_set_new($unclean_value, $valid_set, TRUE);
                        if($validator->validity == FALSE)
                        {
                            //$lst_error .= $validator->error_message . $label . '<br>';
                            $arr_error[$unclean] = $validator->error_message;
                        }
                    }
                }
                else
                {
                    //If a char set method is given, check 'unclean' for invalid characters
                    if($char_set_method!='')
                    {
                        $cg = new char_set;
                        $cg->allow_space = $char_set_allow_space;
                        $cg->$char_set_method($extra_chars_allowed);
                        $allowed = $cg->allowed_chars;

                        $validator->field_name = $label;
                        $validator->validate_data($unclean_value, $data_type, $allowed);

                        if($validator->validity == FALSE)
                        {
                            $cntInvalidChars = count($validator->invalid_chars);
                            if($cntInvalidChars == 1)
                            {
                                //$lst_error .= "Invalid character found in '$label': " . cobalt_htmlentities($validator->invalid_chars[0]) . '<br>';
                                $arr_error[$unclean] = "This field has invalid character: " . cobalt_htmlentities($validator->invalid_chars[0]);
                            }
                            elseif($cntInvalidChars > 1)
                            {
                                $lst_error .= "Invalid characters found in '$label': ";

                                for($a=0; $a<$cntInvalidChars; ++$a)
                                {
                                    $lst_error .= cobalt_htmlentities($validator->invalid_chars[$a]) . ' ';
                                }
                                $lst_error .= '<br>';
                            }
                        }
                    }
                }
            }
        }

        //determine if multifield data needs to be sanitized
        foreach($this->relations as $rel_info)
        {
            if($rel_info['type'] == '1-M')
            {
                $subclass = cobalt_load_class($rel_info['table']);
                $lst_error .= $subclass->sanitize_mf_new($param)->lst_error;
            }
        }

        $this->lst_error = $arr_error;

        return $this;
    }

    function sanitize_mf_new(&$param)
    {
        if(empty($this->field_from_parent))
        {
            foreach($this->relations as $rel_info)
            {
                if($rel_info['type'] == 'M-1')
                {
                    $this->field_from_parent = $rel_info['link_child'];
                }
            }
        }

        $minimum_rows = 0;
        foreach($this->relations as $rel_info)
        {
            if($rel_info['type'] == 'M-1')
            {
                $minimum_rows = $rel_info['minimum'];
            }
        }

        $lst_error = '';
        require_once 'validation_class.php';
        require_once 'char_set_class.php';
        $validator = new validation;

        //Check if some required fields are left blank in the submitted rows.
        foreach($this->fields as $field_name=>$field_details)
        {
            $dd_field_name = $field_name;
            $field_name = 'cf_' . $this->table_name . '_' . $field_name;
            $label    = $field_details['label'];
            $required = $field_details['required'];
            if($required && $dd_field_name != $this->field_from_parent)
            {
                if(isset($param[$field_name]))
                {
                    //$lst_error .= $validator->check_if_null($label, $param[$field_name]);
                    $arr_error[$field_name] = $validator->check_if_null_new($label, $param[$field_name]);
                }
            }
        }

        foreach($param as $unclean=>$unclean_value)
        {
            $prefix_length = strlen('cf_' . $this->table_name . '_');
            $unclean_no_prefix = substr($unclean, $prefix_length, strlen($unclean));

            if(isset($this->fields[$unclean_no_prefix]))
            {
                $length               = $this->fields[$unclean_no_prefix]['length'];
                $data_type            = $this->fields[$unclean_no_prefix]['data_type'];
                $attribute            = $this->fields[$unclean_no_prefix]['attribute'];
                $control_type         = $this->fields[$unclean_no_prefix]['control_type'];
                $label                = $this->fields[$unclean_no_prefix]['label'];
                $char_set_method      = $this->fields[$unclean_no_prefix]['char_set_method'];
                $char_set_allow_space = $this->fields[$unclean_no_prefix]['char_set_allow_space'];
                $extra_chars_allowed  = $this->fields[$unclean_no_prefix]['extra_chars_allowed'];
                $trim                 = $this->fields[$unclean_no_prefix]['trim'];
                $valid_set            = $this->fields[$unclean_no_prefix]['valid_set'];

                //Apply trimming if specified.
                //Triming should be applied to $unclean_value for purposes of further filtering/checking,
                //and then also applied to $param[$unclean] so as to actually affect the POST variable.
                //Note: since this is an mf-specialized method, we are dealing with arrays. Count first
                $num_items = 0;
                if(is_array($param[$unclean]))
                {
                    $num_items = count($param[$unclean]);
                }

                for($a=0; $a<$num_items; ++$a)
                {
                    if(strtolower($trim) == 'trim')
                    {
                        $unclean_value[$a] = trim($unclean_value[$a]);
                        $param[$unclean][$a] = trim($unclean_value[$a]);
                    }
                    elseif(strtolower($trim) == 'ltrim')
                    {
                        $unclean_value[$a] = ltrim($unclean_value[$a]);
                        $param[$unclean][$a] = ltrim($unclean_value[$a]);
                    }
                    elseif(strtolower($trim) == 'rtrim')
                    {
                        $unclean_value[$a] = rtrim($unclean_value[$a]);
                        $param[$unclean][$a] = rtrim($unclean_value[$a]);
                    }

                    //Check length
                    if($length > 0)
                    {
                        if(strlen($unclean_value[$a]) > $length)
                            $lst_error .= "The field '$label' (in line #" . ($a+1) . ") can only accept $length characters.<br>";
                    }

                    $validator = new validation;
                    //If there is a set of valid inputs, check if 'unclean' conforms to it.
                    if(count($valid_set) > 1)
                    {
                        if($unclean_value == '')
                        {
                            //No need to check because no value was submitted.
                        }
                        else
                        {
                            $validator->check_data_set_new($unclean_value[$a], $valid_set, TRUE);
                            if($validator->validity == FALSE)
                            {
                                //$lst_error .= $validator->error_message . $label . '<br>';
                                $arr_error[$unclean] = $validator->error_message;
                            }
                        }
                    }
                    else
                    {
                        //If a char set method is given, check 'unclean' for invalid characters
                        if($char_set_method!='')
                        {
                            $cg = new char_set;
                            $cg->allow_space = $char_set_allow_space;
                            $cg->$char_set_method($extra_chars_allowed);
                            $allowed = $cg->allowed_chars;

                            $validator->field_name = $label;
                            $validator->validate_data($unclean_value[$a], $data_type, $allowed);
                            if($validator->validity == FALSE)
                            {
                                $cntInvalidChars = count($validator->invalid_chars);

                                if($cntInvalidChars == 1)
                                {
                                    $lst_error .= "Invalid character found in '$label' in line #" . ($a+1) . ": " . cobalt_htmlentities($validator->invalid_chars[0]) . '<br>';
                                }
                                elseif($cntInvalidChars > 1)
                                {
                                    $lst_error .= "Invalid characters found in '$label' in line #" . ($a+1) . ": ";
                                    for($b=0; $b<$cntInvalidChars; ++$b)
                                    {
                                        $lst_error .= cobalt_htmlentities($validator->invalid_chars[$b]) . ' ';
                                    }
                                    $lst_error .= '<br>';
                                }
                            }
                        }
                    }
                }
            }
        }

        $this->lst_error = $lst_error;

        return $this;
    }

}
