<?php

class Admin extends Controller {
    public function index()
    {
        $data['judul'] = 'Management';
        $this->view('templates/headerAdmin', $data);
        $this->view('admin/index', $data);
        $this->view('templates/footerAdmin');
    }
}