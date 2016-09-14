<?php
require_once 'health_dd.php';
class health extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = health_dd::load_dictionary();
        $this->relations  = health_dd::load_relationships();
        $this->subclasses = health_dd::load_subclass_info();
        $this->table_name = health_dd::$table_name;
        $this->tables     = health_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('health_id, citizen_id, asthma, allergies, congenital_heart, seizure, diabetes, cancer, ortophedic_prob, vission_prob, hearing_prob, speech_prob, hospitalization, surgery, serious_illness, serious_accidents, bmi, blood_pressure, heent, dental_status, neck, lymph_nodes, lungs, cardiovascular, abdomen, genito_urinary, extremites, back, skin, neuro, gross_motor, psycho_social_dv, language, behavioral, fine_motor, hearing_audio, hearing_threshold, vission_right_far, vission_right_near, vission_left_far, vission_left_near, vission_both_far, vission_both_near, vission_fusion, vission_color, blood_based, chest_x_ray, bcg, on_inh, diagnosis, recomendations');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('iissssssssssssssissssssssssssssssssssiiiiiissssssss',
                                 &$this->fields['health_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['asthma']['value'],
                                 &$this->fields['allergies']['value'],
                                 &$this->fields['congenital_heart']['value'],
                                 &$this->fields['seizure']['value'],
                                 &$this->fields['diabetes']['value'],
                                 &$this->fields['cancer']['value'],
                                 &$this->fields['ortophedic_prob']['value'],
                                 &$this->fields['vission_prob']['value'],
                                 &$this->fields['hearing_prob']['value'],
                                 &$this->fields['speech_prob']['value'],
                                 &$this->fields['hospitalization']['value'],
                                 &$this->fields['surgery']['value'],
                                 &$this->fields['serious_illness']['value'],
                                 &$this->fields['serious_accidents']['value'],
                                 &$this->fields['bmi']['value'],
                                 &$this->fields['blood_pressure']['value'],
                                 &$this->fields['heent']['value'],
                                 &$this->fields['dental_status']['value'],
                                 &$this->fields['neck']['value'],
                                 &$this->fields['lymph_nodes']['value'],
                                 &$this->fields['lungs']['value'],
                                 &$this->fields['cardiovascular']['value'],
                                 &$this->fields['abdomen']['value'],
                                 &$this->fields['genito_urinary']['value'],
                                 &$this->fields['extremites']['value'],
                                 &$this->fields['back']['value'],
                                 &$this->fields['skin']['value'],
                                 &$this->fields['neuro']['value'],
                                 &$this->fields['gross_motor']['value'],
                                 &$this->fields['psycho_social_dv']['value'],
                                 &$this->fields['language']['value'],
                                 &$this->fields['behavioral']['value'],
                                 &$this->fields['fine_motor']['value'],
                                 &$this->fields['hearing_audio']['value'],
                                 &$this->fields['hearing_threshold']['value'],
                                 &$this->fields['vission_right_far']['value'],
                                 &$this->fields['vission_right_near']['value'],
                                 &$this->fields['vission_left_far']['value'],
                                 &$this->fields['vission_left_near']['value'],
                                 &$this->fields['vission_both_far']['value'],
                                 &$this->fields['vission_both_near']['value'],
                                 &$this->fields['vission_fusion']['value'],
                                 &$this->fields['vission_color']['value'],
                                 &$this->fields['blood_based']['value'],
                                 &$this->fields['chest_x_ray']['value'],
                                 &$this->fields['bcg']['value'],
                                 &$this->fields['on_inh']['value'],
                                 &$this->fields['diagnosis']['value'],
                                 &$this->fields['recomendations']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("citizen_id = ?, asthma = ?, allergies = ?, congenital_heart = ?, seizure = ?, diabetes = ?, cancer = ?, ortophedic_prob = ?, vission_prob = ?, hearing_prob = ?, speech_prob = ?, hospitalization = ?, surgery = ?, serious_illness = ?, serious_accidents = ?, bmi = ?, blood_pressure = ?, heent = ?, dental_status = ?, neck = ?, lymph_nodes = ?, lungs = ?, cardiovascular = ?, abdomen = ?, genito_urinary = ?, extremites = ?, back = ?, skin = ?, neuro = ?, gross_motor = ?, psycho_social_dv = ?, language = ?, behavioral = ?, fine_motor = ?, hearing_audio = ?, hearing_threshold = ?, vission_right_far = ?, vission_right_near = ?, vission_left_far = ?, vission_left_near = ?, vission_both_far = ?, vission_both_near = ?, vission_fusion = ?, vission_color = ?, blood_based = ?, chest_x_ray = ?, bcg = ?, on_inh = ?, diagnosis = ?, recomendations = ?");
            $this->set_where("health_id = ?");

            $bind_params = array('issssssssssssssissssssssssssssssssssiiiiiissssssssi',
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['asthma']['value'],
                                 &$this->fields['allergies']['value'],
                                 &$this->fields['congenital_heart']['value'],
                                 &$this->fields['seizure']['value'],
                                 &$this->fields['diabetes']['value'],
                                 &$this->fields['cancer']['value'],
                                 &$this->fields['ortophedic_prob']['value'],
                                 &$this->fields['vission_prob']['value'],
                                 &$this->fields['hearing_prob']['value'],
                                 &$this->fields['speech_prob']['value'],
                                 &$this->fields['hospitalization']['value'],
                                 &$this->fields['surgery']['value'],
                                 &$this->fields['serious_illness']['value'],
                                 &$this->fields['serious_accidents']['value'],
                                 &$this->fields['bmi']['value'],
                                 &$this->fields['blood_pressure']['value'],
                                 &$this->fields['heent']['value'],
                                 &$this->fields['dental_status']['value'],
                                 &$this->fields['neck']['value'],
                                 &$this->fields['lymph_nodes']['value'],
                                 &$this->fields['lungs']['value'],
                                 &$this->fields['cardiovascular']['value'],
                                 &$this->fields['abdomen']['value'],
                                 &$this->fields['genito_urinary']['value'],
                                 &$this->fields['extremites']['value'],
                                 &$this->fields['back']['value'],
                                 &$this->fields['skin']['value'],
                                 &$this->fields['neuro']['value'],
                                 &$this->fields['gross_motor']['value'],
                                 &$this->fields['psycho_social_dv']['value'],
                                 &$this->fields['language']['value'],
                                 &$this->fields['behavioral']['value'],
                                 &$this->fields['fine_motor']['value'],
                                 &$this->fields['hearing_audio']['value'],
                                 &$this->fields['hearing_threshold']['value'],
                                 &$this->fields['vission_right_far']['value'],
                                 &$this->fields['vission_right_near']['value'],
                                 &$this->fields['vission_left_far']['value'],
                                 &$this->fields['vission_left_near']['value'],
                                 &$this->fields['vission_both_far']['value'],
                                 &$this->fields['vission_both_near']['value'],
                                 &$this->fields['vission_fusion']['value'],
                                 &$this->fields['vission_color']['value'],
                                 &$this->fields['blood_based']['value'],
                                 &$this->fields['chest_x_ray']['value'],
                                 &$this->fields['bcg']['value'],
                                 &$this->fields['on_inh']['value'],
                                 &$this->fields['diagnosis']['value'],
                                 &$this->fields['recomendations']['value'],
                                 &$this->fields['health_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("health_id = ?");

        $bind_params = array('i',
                             &$this->fields['health_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("health_id = ?");

        $bind_params = array('i',
                             &$this->fields['health_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);


        $this->set_query_type('SELECT');
        $this->set_where("health_id = ? AND (health_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['health_id']['value'],
                             &$this->fields['health_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
