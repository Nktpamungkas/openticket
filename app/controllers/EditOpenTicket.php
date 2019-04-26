<?php

class EditOpenTicket extends Controller {
    
    public function index($notiket)
    {
        $judul['judul'] = 'Sistem Inventory';
        $data = $this->model('Editlist_model')->tampilOpenTicketTerpilih($notiket);
        $data['openticket'] = $this->model('Editlist_model')->getAllKategori();
        $data['jenis'] = $this->model('Editlist_model')->getAllJenisHardware();
        $data['jeniskerusakan'] = $this->model('Editlist_model')->getAllJenisKerusakan();
        $data['statusticket'] = $this->model('Editlist_model')->getAllStatus();
        $this->view('templates/headerAdmin', $judul);
        $this->view('ticketlist/editOpenTicket', $data);
        $this->view('templates/footerAdmin');
        // var_dump( $dataKategori['kategori'] );
        // var_dump($data['notiket']);
    }

    public function ubahOpenTicket()
    {
        if( $this->model('Editlist_model')->ubahOpenTicket($_POST) > 0 ){
            Flasher::setFlash('Berhasil', 'ubah ticket', 'success');
            header('Location: ' . BASEURL . '/ticketlist');
            exit;
        } else {
            Flasher::setFlash('Gagal', 'ubah ticket', 'danger');
            header('Location: ' . BASEURL . '/ticketlist');
            exit;
        }
        // var_dump($_POST);
    }

}
