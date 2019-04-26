<?php

class EditIpAddress extends Controller {
    
    public function index($id)
    {
        $judul['judul'] = 'Sistem Inventory';
        $data = $this->model('Ipaddress_model')->tampilIpaddress($id);
        $data['akses'] = $this->model('Ipaddress_model')->getAllAkses();
        $data['code_dept'] = $this->model('Ipaddress_model')->getAllDept();
        $this->view('templates/headerAdmin', $judul);
        $this->view('ipaddress/editIpAddress', $data);
        $this->view('templates/footerAdmin');
    }

    public function ubahIpaddress()
    {
        if( $this->model('Ipaddress_model')->ubahIpaddress($_POST) > 0 ){
            Flasher::setFlash('Berhasil', 'ubah Ip Address', 'success');
            header('Location: ' . BASEURL . '/ipaddress');
            exit;
        } else {
            Flasher::setFlash('Gagal', 'ubah Ip Address', 'danger');
            header('Location: ' . BASEURL . '/ipaddress');
            exit;
        }
        // var_dump($_POST);
    }
}