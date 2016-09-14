<?php
require 'base_reporter_class.php';
class reporter extends base_reporter
{
	function transform_value($value)
    {
        $transformed_value = $value;

        switch(trim($value))
        {
            case '@TODAY@':
                    $transformed_value = date('Y-m-d');
                    break;
            case '@THIS_WEEK':
                    $day_today = date('N'); //1-7 (ISO numeric date; Mon=1,Sun=7)
                    $distance_from_monday = $day_today - 1;
                    $distance_from_sunday = 7 - $day_today;
                    $start_date = date('Y-m-d', mktime(0,0,0,date('n'), date('j') - $distance_from_monday , date('Y')));
                    $end_date = date('Y-m-d', mktime(0,0,0,date('n'), date('j') + $distance_from_sunday , date('Y')));
                    $transformed_value = $start_date . ', ' . $end_date;
                    echo $transformed_value;
                    break;
            case '@THIS_MONTH@':
                    $transformed_value = date('Y-m');
                    break;
            case '@THIS_YEAR@':
                    $transformed_value = date('Y');
                    break;
			case '@SENIOR@':	
					$m = date('m');
					$d = date('d');
					$y = date('Y');
					$transformed_value = date('Y-m-d', mktime(0,0,0, $m, $d, $y-60));
                    break;
        }

        return $transformed_value;
    }
}
