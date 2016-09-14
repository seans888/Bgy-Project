<?php
require 'base_validation_class.php';
class validation extends base_validation
{
    //This function checks if the submitted data conforms to the defined
    //whitelist or blacklist, as specified in $valid_set and $whitelist.
    function check_data_set_new($unclean, $valid_set, $whitelist)
    {
        if($whitelist) //whitelist approach - $valid_set contains the only values allowed.
        {
            //Initialize $this->validity as FALSE, so that we need to get a match in the
            //whitelist before it becomes valid.
            $this->validity = FALSE;
            if(is_array($valid_set))
            {
                $num = count($valid_set);
                for($a=0;$a<$num;++$a)
                {
                    if($unclean == $valid_set[$a]) $this->validity=TRUE; //Valid because it matched a valid value.
                }
            }
            else
            {
                if($unclean == $valid_set) $this->validity=TRUE; //Valid because it matched a valid value.
            }

            if($this->validity==FALSE)
            {
                //$this->error_message = 'Invalid value submitted in: ';
                $this->error_message = 'This field has invalid value.';
            }
        }
        else //blacklist approach - $valid_set contains the invalid (unallowable) values.
        {
            //Initialize $this->validity as TRUE, so that we need to get a match in the
            //blacklist before it becomes invalid.
            $this->validity = TRUE;
            if(is_array($valid_set))
            {
                $num = count($valid_set);
                for($a=0;$a<$num;++$a)
                {
                    if($unclean == $valid_set[$a]) $this->validity=FALSE; //Invalid because it matched a forbidden value.
                }
            }
            else
            {
                if($unclean == $valid_set) $this->validity=FALSE; //Invalid because it matched a forbidden value.
            }
        }
    }

    function check_if_null_new()
    {
        $this->error_message = '';
        $numargs = func_num_args();
        for($cntr=0;$cntr<$numargs;$cntr+=2)
        {
            //Create keys for the label-value pair. First in the pair is the label of the field,
            //followed by the value that was submitted for that field.
            $key1 = $cntr;
            $key2 = $cntr+1;

            $label = func_get_arg($key1); //This gets the label that was passed.
            $value = func_get_arg($key2); //This gets the value that was passed.

            if(!is_Array($value))
            {
                //if(trim($value)=="") $this->error_message .= "No value detected: $label <BR>";
                if(trim($value)=="") $this->error_message .= "This field is required.";
            }
            else
            {
                $elements = count($value);
                for($arrCnt=0;$arrCnt<$elements;$arrCnt++)
                {
                    if($value[$arrCnt]=='') $this->error_message .= "No value detected: $label in Line #" . ($arrCnt+1) . ".<BR>";
                }
            }
        }
        return $this->error_message;
    }
}

/*
2016-07-14 modifications:
- Change error message
*/
