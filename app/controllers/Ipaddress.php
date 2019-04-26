<?php

class Ipaddress extends Controller {
    public function index()
    {
        $data['judul'] = 'Ip Address';
        $data['ipaddress'] = $this->model('Ipaddress_model')->getAllIpaddress();
        $this->view('templates/headerAdmin', $data);
        $this->view('ipaddress/index', $data);
        $this->view('templates/footerAdmin');
    }
    
}