<?php

class Ipaddress_model {
    private $ipaddress = 'ipaddress';
    private $akses = 'tblakses';
    private $dept = 'departments';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllIpaddress()
    {
        $this->db->query("SELECT * FROM $this->ipaddress ORDER BY IP ASC");
        return $this->db->resultSet();
    }

    public function tampilIpaddress($id)
    {
        $this->db->query("SELECT * FROM $this->ipaddress WHERE id = '$id' ");
        return $this->db->single();
    }

    public function getAllAkses()
    {
        $this->db->query("SELECT * FROM $this->akses");
        return $this->db->resultSet();
    }

    public function getAllDept()
    {
        $this->db->query("SELECT * FROM $this->dept");
        return $this->db->resultSet();
    }

    public function ubahIpaddress($data)
    {
        $editIpAddress = "UPDATE ipaddress
                             SET IP = :ip,
                                 HostName = :hostname,
                                 User = :user,
                                 Kode = :kode,
                                 Dept = :dept,
                                 Akses = :akses,
                                 Catatan = :catatan,
                                 MAC = :mac
                           WHERE ID = :id";

        $this->db->query($editIpAddress);
        $this->db->bind('id', $data['id']);
        $this->db->bind('ip', $data['ip']);
        $this->db->bind('hostname', $data['hostname']);
        $this->db->bind('dept', $data['dept']);
        $this->db->bind('akses', $data['akses']);
        $this->db->bind('mac', $data['mac']);
        $this->db->bind('kode', $data['kode']);
        $this->db->bind('user', $data['user']);
        $this->db->bind('catatan', $data['catatan']);

        $this->db->execute();

        return $this->db->rowCount();
    }
}