<?php
defined('BASEPATH') or exit('No direct script access allowed');

abstract class MY_Controller extends CI_Controller
{
    public $nama_lengkap;
    public $username;
    public $id_user;

    public function __construct()
    {
        parent::__construct();
		
		is_logged_in();
		has_access();

		$this->logged_in 		= $this->session->userdata('logged_in');
        $this->id_perusahaan 	= $this->session->userdata('id_perusahaan');
        $this->nama_lengkap  	= $this->session->userdata('nama_lengkap');
        $this->coverage      	= $this->session->userdata('coverage');
        $this->username      	= $this->session->userdata('username');
        $this->id_user       	= $this->session->userdata('id_user');
        $this->level         	= $this->session->userdata('level');
        $this->nik           	= $this->session->userdata('nik');
        $this->role_name        = $this->session->userdata('role_name');
        $this->nama_cabang      = $this->session->userdata('nama_cabang');
        $this->brand         	= explode('_', $this->session->userdata('level'))[0];
    }
}
