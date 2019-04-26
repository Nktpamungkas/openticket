<?php

class Ticketlist extends Controller {
    public function index()
    {
        $data['judul'] = 'Sistem Inventory:';
        $data['ticketlist'] = $this->model('Ticketlist_model')->getAllTicketList();
        $this->view('templates/headerAdmin', $data);
        $this->view('ticketlist/index', $data);
        $this->view('templates/footerAdmin');
        // var_dump($data['statusticket']);
    }

    
}