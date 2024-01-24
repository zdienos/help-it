<?php
class M_Login extends CI_Model
{

	function cekLogin()
	{
		$usr = $this->input->post('username');
		$psw = $this->input->post('password');
		$u = $usr;
		$p = md5($psw);

		$this->db->where("nama_user", $u);
		$this->db->where("pass_user", $p);

		$query = $this->db->get("tb_user");
		if ($query->num_rows() > 0) {
			// foreach ($query->result() as $qad) {
				$qad = $query->row();
				$session_data = [
					'id_user'		=> $qad->id_user,
					'nama_user' 	=> $qad->nama_user,
					'nama_lengkap'	=> $qad->nama_lengkap,
					'role'			=> $qad->role,
					'avatar'		=> $qad->avatar,
					'logged_in'		=>'helpITlogin',
				];

				$this->session->set_userdata($session_data);
			// }
			return true;
		} else {
			return false;
		}
	}
}
