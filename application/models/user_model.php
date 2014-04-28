<?php

class User_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
	}
	
	/**
	 *  Get one or many users
	 *  
	 *  @param integer|void $user_id
	 *  
	 *  @return array 
	 */
	public function get($user_id = null)
	{
		if ($user_id == null) {
			$query = $this->db->get('user');
		} else {
			$query = $this->db->get_where('user',array('user_id' => $user_id));
		}
		return $query->result();
	}
	
	/**
	 *  Attempts to validate and log a user in
	 *  
	 *  @param string $type admin or user
	 *  @param string $email
	 *  @param string $password do not encrypt
	 *  
	 *  @return array
	 */
	public function login($type, $email, $password)
	{
		$query = $this->db->get_where('user', array(
			'type' => $type,
			'email' => $email,
			'password' => sha1($password . HASH_KEY)
		));
		
		return $query->result();
	}
	
	public function create($email, $password)
	{
		$this->form_validation->set_rules('email', 'Email', 'is_unique[user.email]');
		if ($this->form_validation->run() == false) {
			return false;
		}

		// Create the record
		$result = $this->db->insert('user', array(
			'email' => $email,
			'password' => sha1($password . HASH_KEY)
		));
		return $result;
	}
	
	public function delete($user_id)
	{
		$this->db->where(array('user_id' => $user_id));
		echo $this->db->delete('user');
	}
}