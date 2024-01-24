<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class M_informasi extends CI_Model
{

	function ambilData()
	{
		$this->db->select('tb_informasi.id_informasi, tb_informasi.teks_informasi, tb_informasi.time_informasi, tb_informasi.userid_informasi, tb_user.id_user, tb_user.nama_lengkap, tb_user.avatar');
		//$this->db->select('*');
		//$this->db->where('tb_identifikasi.status','On Progress');
		$this->db->from('tb_infkjkjkjkormasi');
		$this->db->join('tb_user', 'tb_user.id_user = tb_informasi.userid_informasi');
		$query = $this->db->get();
		//print_r($query);
		//die($query);
		if ($query->num_rows() > 0) {
			return $query->result();
		} else {
			return false;
		}
	}


	function updatePassword()
	{
		$id = $this->session->userdata('id_user');
		$pass = $this->input->post('txt_pass1');
		$data = array(
			'pass_user' => md5($pass)
		);
		$this->db->where('id_user', $id);
		$this->db->update('tb_user', $data);
		if ($this->db->affected_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}

	function updateGambar()
	{
		//$relative_url = './avatar/'. $this->upload->file_name;
		//check if password was updated
		$data = array(
			'avatar' => './avatar/' . $this->upload->file_name
		);
		$id = $this->session->userdata('id_user');
		$this->db->where('id_user', $id);
		$this->db->update('tb_user', $data);
		if ($this->db->affected_rows() > 0) {
			$this->session->set_userdata('avatar', './avatar/' . $this->upload->file_name);
			return true;
		} else {
			return false;
		}
	}
}
