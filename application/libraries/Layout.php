<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Layout
{
	private $layout_data = array();
	private $template = '_template/'; //layout template yang digunakan

	private $CI;
	private $role;
	private $role_name;

	function __construct()
	{
		$this->CI = &get_instance();
		$this->role 	= $this->CI->session->userdata('role');
		$this->role_name = $this->CI->session->userdata('role_name');
	}

	function set($name, $value)
	{
		$this->layout_data[$name] = $value;
	}

	function view($title = '', $view = '', $view_data = array(), $return = FALSE)
	{

		$view_data['judul'] = $title;

		if (empty($this->role)) {
			redirect(base_url('login'), 'refresh');
		}

		// $this->CI->load->view('_template/header', $view_data, TRUE);

		
		if ($this->_view_exists($view . '_css')) {
			$this->set('css', $this->CI->load->view($view . '_css', $view_data, TRUE));
		} else {
			$this->set('css', '', TRUE);
		}
		
		$this->set('content', $this->CI->load->view($view, $view_data, TRUE));

		$this->set('footer', $this->CI->load->view($view, $view_data, TRUE));

		if ($this->_view_exists($view . '_js')) {
			$this->set('javascript', $this->CI->load->view($view . '_js', $view_data, TRUE));
		} else {
			$this->set('javascript', '', TRUE);
		}

		return $this->CI->load->view($this->template . 'main', $this->layout_data, $return);
	}

	function _view_exists($view)
	{
		// $module_name = $this->CI->router->fetch_module();
		// $mod_dir = 'modules/' . $this->CI->uri->rsegment(1) . '/';
		// $mod_dir = 'modules/' . $module_name . '/';
		return (
			(file_exists(APPPATH . 'views/' . $view . '.php') or file_exists(APPPATH . 'views/' . $view))
			// or
			// (file_exists(APPPATH . $mod_dir . 'views/' . $view . EXT) or file_exists(APPPATH . $mod_dir . 'views/' . $view))
		);
	}
}

/* End of file Layout.php */
/* Location: ./system/application/libraries/Layout.php */
