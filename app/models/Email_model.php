<?php

class Email_model {
    private $table = 'tblemail';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllEmail()
    {
        $this->db->query('SELECT * FROM '. $this->table);
        return $this->db->resultSet();
    }

    public function tampilEmail($No)
    {
        $this->db->query("SELECT * FROM $this->table WHERE `No` = '$No' ");
        return $this->db->single();
    }

    public function ubahEmail($data)
    {
        $query = "UPDATE $this->table 
                     SET IP = :ip,
                         User = :user,
                         Dept = :dept,
                         Email = :email,
                         Jabatan = :jabatan
                   WHERE No = :no";

        $this->db->query($query);
        $this->db->bind('no', $data['no']);
        $this->db->bind('ip', $data['ip']);
        $this->db->bind('user', $data['user']);
        $this->db->bind('dept', $data['dept']);
        $this->db->bind('email', $data['email']);
        $this->db->bind('jabatan', $data['jabatan']);

        $this->db->execute();

        return $this->db->rowCount();
    }
}