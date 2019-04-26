<?php

class About extends controller{
    public function index($nama = 'Nilo', $pekerjaan = 'Programmer Jadul', $umur = 32)
    {
        $data['nama'] = $nama;
        $data['pekerjaan'] = $pekerjaan;
        $data['umur'] = $umur;
        $data['judul'] = 'About Me';
        $this->view('templates/header');
        $this->view('about/index', $data);
        $this->view('templates/header');
    }
    public function page()
    {
        $data['judul'] = 'Pages';
        $this->view('templates/header');
        $this->view('about/page',$data);
        $this->view('templates/header');
    }
}