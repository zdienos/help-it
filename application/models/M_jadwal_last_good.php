<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_jadwal extends CI_Model
{


	/*Read the data from DB */
	public function getEvents()
	{

		$sql = "SELECT * FROM tb_jadwal WHERE tb_jadwal.start BETWEEN ? AND ? ORDER BY tb_jadwal.start ASC";
		return $this->db->query($sql, array($_GET['start'], $_GET['end']))->result();
	}

	public function getEventsAllDay()
	{

		$sql = "SELECT * FROM tb_jadwal WHERE tb_jadwal.start ORDER BY tb_jadwal.start ASC";
		return $this->db->query($sql)->result();
	}

	/*Create new events */

	public function addEvent()
	{

		$sql = "INSERT INTO tb_jadwal (title,tb_jadwal.start,tb_jadwal.end, description, color) VALUES (?,?,?,?,?)";
		$this->db->query($sql, array($_POST['title'], $_POST['start'], $_POST['end'], $_POST['description'], $_POST['color']));
		return ($this->db->affected_rows() != 1) ? false : true;
	}

	/*Update  event */

	public function updateEvent()
	{

		$sql = "UPDATE tb_jadwal SET title = ?, description = ?, color = ? WHERE id = ?";
		$this->db->query($sql, array($_POST['title'], $_POST['description'], $_POST['color'], $_POST['id']));
		return ($this->db->affected_rows() != 1) ? false : true;
	}


	/*Delete event */

	public function deleteEvent()
	{

		$sql = "DELETE FROM tb_jadwal WHERE id = ?";
		$this->db->query($sql, array($_GET['id']));
		return ($this->db->affected_rows() != 1) ? false : true;
	}

	/*Update  event */

	public function dragUpdateEvent()
	{
		//$date=date('Y-m-d h:i:s',strtotime($_POST['date']));

		$sql = "UPDATE tb_jadwal SET  tb_jadwal.start = ? ,tb_jadwal.end = ?  WHERE id = ?";
		$this->db->query($sql, array($_POST['start'], $_POST['end'], $_POST['id']));
		return ($this->db->affected_rows() != 1) ? false : true;
	}
}
