<?php
init_var($chosen_type);
if ($chosen_type == "")
{
	
	$html->fields['fee_new']['control_type'] = 'hidden';
	$html->fields['fee_renew']['control_type'] = 'hidden';
	
}
else 
{
	if ($chosen_capital_investment == "")
	{
		$html->fields['fee_new']['control_type'] = 'hidden';
		$html->fields['fee_renew']['control_type'] = 'hidden';

	}
	else
	{
		if ($chosen_type == "New")
		{
			$html->fields['fee_renew']['control_type'] = 'hidden';

		}
		$html->fields['fee_new']['list_settings']['query'] = "SELECT business_permit_fee.business_permit_fee_id AS `Queried_business_permit_fee_id`, business_permit_fee.fee_new AS new_fee FROM business_permit_fee WHERE business_permit_fee.business_permit_fee_id=$chosen_capital_investment ORDER BY fee_new ASC";
		
			if ($chosen_type == "Renew")
		{
			$html->fields['fee_new']['control_type'] = 'hidden';

		}
		$html->fields['fee_renew']['list_settings']['query'] = "SELECT business_permit_fee.business_permit_fee_id AS `Queried_business_permit_fee_id`, business_permit_fee.fee_renew AS renew FROM business_permit_fee  WHERE business_permit_fee.business_permit_fee_id=$chosen_capital_investment ORDER BY fee_renew ASC";
			
	
	
	
	}
}




