<?php

class Editemail extends Controller {
    
    public function index($No)
    {
        $judul['judul'] = 'Sistem Inventory';
        $data = $this->model('Email_model')->tampilEmail($No);
        $this->view('templates/headerAdmin', $judul);
        $this->view('email/editEmail', $data);
        $this->view('templates/footerAdmin');
    }

    public function ubahEmail()
    {
        if( $this->model('Email_model')->ubahEmail($_POST) > 0 ){
            Flasher::setFlash('Berhasil', 'ubah email', 'success');
            header('Location: ' . BASEURL . '/email');
            exit;
        } else {
            Flasher::setFlash('Gagal', 'ubah email', 'danger');
            header('Location: ' . BASEURL . '/email');
            exit;
        }
        // var_dump($_POST);
    }
}