<?php

class Openticket extends Controller {
    public function index()
    {
        $data['judul'] = 'Open Ticket';
        $data['dept'] = $this->model('Openticket_model')->getAllDept();
        $data['kategori'] = $this->model('Openticket_model')->getAllKategori();
        $data['tambahOtomatisIpaddress'] = $this->model('Openticket_model')->tambahOtomatisIpaddress();
        $this->view('templates/header', $data);
        $this->view('openticket/index', $data);
        $this->view('templates/footer');
    }

    public function tambahOpenTicket()
    {
        if( $this->model('Openticket_model')->tambahOpenTicket($_POST) > 0 ){
            Flasher::setFlash('Berhasil', 'open ticket', 'success');
            header('Location: ' . BASEURL . '/openticket');
            exit;
        } else {
            Flasher::setFlash('Gagal', 'open ticket', 'danger');
            header('Location: ' . BASEURL . '/openticket');
            exit;
        }
    }

}