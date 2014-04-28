<?php

class MY_Controller extends CI_Controller {

	public $data = array();

	// ------------------------------------------------------------------------
	
	public function __construct() 
	{
		parent::__construct();

		$this->data['header'] = $this->load->view('inc/header', null, true);
		$this->data['footer'] = $this->load->view('inc/footer', null, true);
	}
	
	// ------------------------------------------------------------------------
}