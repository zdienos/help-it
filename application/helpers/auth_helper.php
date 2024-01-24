<?php
defined('BASEPATH') or exit('No direct script access allowed');


//apakah sudah login atau tidak
if (!function_exists('is_logged_in')) {
	function is_logged_in()
	{
		$ci = get_instance();
		if (!$ci->session->userdata('logged_in')) {
			// redirect('loginxx');
		}
	}
}

//apakah punya akses terhadap controller terkait
if (!function_exists('has_access')) {
	function has_access()
	{
		$ci = get_instance();

		$role_id = $ci->session->userdata('role_id');
		$uri = $ci->uri->segment(1);

		$not_in_menus = ['','home','filemanager'];

		if(!in_array($uri,$not_in_menus)){
			$queryMenu = $ci->db_wuling
				->select('mrg.menu_id,m.url')
				->from('menu_role_group mrg')
				->join('menu m','m.id=mrg.menu_id')
				->where('mrg.role_id',$role_id)
				->where('m.url',$uri)
				->where('m.is_enabled',1)
				->get();
	
			if ($queryMenu->num_rows() < 1 ) {
				redirect('blocked');
			}
		}
	}
}
