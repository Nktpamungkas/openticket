<?php

class Email extends Controller {
    public function index()
    {
        $data['judul'] = 'Email List';
        $data['email'] = $this->model('Email_model')->getAllEmail();
        if ( isset ($_SESSION['userId'])) {
            $this->view('templates/headerAdmin', $data);
            $this->view('email/index', $data);
            $this->view('templates/footerAdmin');
        }else {
            $this->view('templates/header', $data);
            $this->view('email/index', $data);
            $this->view('templates/footer');
        }
        
    }
}