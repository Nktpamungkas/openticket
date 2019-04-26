<?php

class Openticket_model {
    private $table = 'tbldept';
    private $tableKategori = 'tblkategori';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllDept()
    {
        $this->db->query('SELECT * FROM '. $this->table);
        return $this->db->resultSet();
    }

    public function getAllKategori()
    {
        $this->db->query('SELECT * FROM '. $this->tableKategori);
        return $this->db->resultSet();
    }

    public function tambahOpenTicket($data)
    {   
        $dpt = $data['department'];
        $looping = "SELECT SUBSTRING(notiket, -4) as notiket FROM tblopentiket WHERE SUBSTRING(notiket, 1,3) = '$dpt'";
        $qloop = $this->db->query($looping);
        $hasil = $this->db->single();

        $no = $hasil['notiket'];
        $noUrut = $no + 1;
        $hasilkode = $dpt.str_pad($noUrut, 4, "0", STR_PAD_LEFT);

        // var_dump($hasilkode);
        $query = "INSERT INTO tblopentiket(notiket,dept,namapelapor,email,kategori,permasalahan,`status`) VALUES('$hasilkode',:department, :namapelapor, :email, :kategori, :permasalahan, 'Open')";

        $this->db->query($query);
        $this->db->bind('department', $data['department']);
        $this->db->bind('namapelapor', $data['namapelapor']);
        $this->db->bind('email', $data['email']);
        $this->db->bind('kategori', $data['kategori']);
        $this->db->bind('permasalahan', $data['permasalahan']);

        $this->db->execute();

        return $this->db->rowCount();
        
    }

    public function tambahOtomatisIpaddress()
    {
        $ipaddress = $_SERVER['REMOTE_ADDR'];
        $HostName = gethostbyaddr($_SERVER['REMOTE_ADDR']);

        $sub_dpt = substr($HostName, 0,3);

        $kode = $sub_dpt.'-'.substr($ipaddress, -5);

        // start mac address
        $_IP_SERVER = $_SERVER['SERVER_ADDR'];
        $_IP_ADDRESS = $_SERVER['REMOTE_ADDR'];
        if($_IP_ADDRESS == $_IP_SERVER)
        {
            ob_start();
            system('ipconfig /all');
            $_PERINTAH  = ob_get_contents();
            ob_clean();
            $_PECAH = strpos($_PERINTAH, "Physical");
            $mac = substr($_PERINTAH,($_PECAH+36),17);
        } else {
            $_PERINTAH = "arp -a $_IP_ADDRESS";
            ob_start();
            system($_PERINTAH);
            $_HASIL = ob_get_contents();
            ob_clean();
            $_PECAH = strstr($_HASIL, $_IP_ADDRESS);
            $_PECAH_STRING = explode($_IP_ADDRESS, str_replace(" ", "", $_PECAH));
            $mac = substr($_PECAH_STRING[1], 0, 17);
        }
        // end mac address

        $count = $this->db->query("SELECT COUNT(*) AS COUNT FROM ipaddress WHERE IP = '$ipaddress' ");
        $hasil = $this->db->single();
        $jml = $hasil['COUNT'];

        // var_dump($jml);
        if ($jml == 0) {
            $this->db->query("INSERT INTO ipaddress(IP,HostName,Kode,Dept,MAC)VALUE('$ipaddress','$HostName','$kode','$sub_dpt','$mac')");
            $this->db->execute();
        }else {
            $this->db->query("UPDATE ipaddress SET IP='$ipaddress', HostName='$HostName', Kode='$kode', Dept='$sub_dpt', MAC='$mac' WHERE IP = '$ipaddress' ");
            $this->db->execute();
        }
    }
    

}