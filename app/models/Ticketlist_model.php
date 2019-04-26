<?php

class Ticketlist_model {
    private $table = 'tblopentiket';
    private $status = 'tblstatus';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllTicketList()
    {
        $this->db->query("SELECT * FROM $this->table WHERE NOT status = '4' ");
        return $this->db->resultSet();
    }
    
}