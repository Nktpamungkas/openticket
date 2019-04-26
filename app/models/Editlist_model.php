<?php

class Editlist_model {
    private $table = "tblkategori";
    private $jenis = "tbljenishardware";
    private $jenisKerusakan = "tbljeniskerusakan";
    private $status = "tblstatus";
    private $db;
    
    public function __construct()
    {
        $this->db = new Database;
    }

    public function tampilOpenTicketTerpilih($notiket)
    {
        $this->db->query("SELECT * FROM tblopentiket WHERE notiket = '$notiket' ");
        return $this->db->single();
    }

    public function getAllKategori()
    {
        $this->db->query('SELECT * FROM '. $this->table);
        return $this->db->resultSet();
    }

    public function getAllJenisHardware()
    {
        $this->db->query('SELECT * FROM '. $this->jenis);
        return $this->db->resultSet();
    }

    public function getAllJenisKerusakan()
    {
        $this->db->query('SELECT * FROM '. $this->jenisKerusakan);
        return $this->db->resultSet();
    }

    public function getAllStatus()
    {
        $this->db->query('SELECT * FROM '. $this->status);
        return $this->db->resultSet();
    }

    public function ubahOpenTicket($data)
    {
        $checkbox = $data['checkbox'];

        if ($checkbox == "on") {
            $editOpenTicket = "UPDATE tblopentiket 
                                  SET permasalahan = :permasalahan,
                                      kategori = :kategori,
                                      hardware = :jenis,
                                      kerusakan = :kerusakan,
                                      tglfollowup = :tglfollowup,
                                      admin = :admin,
                                      penyelesaian = :penyelesaian,
                                      status = :status,
                                      catatan = :catatan,
                                      tglclose = :tglclose
                                WHERE notiket = :notiket";

            $this->db->query($editOpenTicket);
            $this->db->bind('permasalahan', $data['permasalahan']);
            $this->db->bind('kategori', $data['kategori']);
            $this->db->bind('jenis', $data['jenis']);
            $this->db->bind('kerusakan', $data['kerusakan']);
            $this->db->bind('tglfollowup', $data['tglfollowup']);
            $this->db->bind('admin', $data['admin']);
            $this->db->bind('penyelesaian', $data['penyelesaian']);
            $this->db->bind('status', $data['status']);
            $this->db->bind('catatan', $data['catatan']);
            $this->db->bind('tglclose', $data['tglclose']);
            $this->db->bind('notiket', $data['notiket']);

            $this->db->execute();

            return $this->db->rowCount();
        }else{
            $editOpenTicket = "UPDATE tblopentiket 
                                SET permasalahan = :permasalahan,
                                    kategori = :kategori,
                                    hardware = :jenis,
                                    kerusakan = :kerusakan,
                                    tglfollowup = :tglfollowup,
                                    admin = :admin,
                                    penyelesaian = :penyelesaian,
                                    status = :status,
                                    catatan = :catatan,
                                    tglclose = :tglclose
                                WHERE notiket = :notiket";

            $this->db->query($editOpenTicket);
            $this->db->bind('permasalahan', $data['permasalahan']);
            $this->db->bind('kategori', $data['kategori']);
            $this->db->bind('jenis', $data['jenis']);
            $this->db->bind('kerusakan', $data['kerusakan']);
            $this->db->bind('tglfollowup', $data['tglfollowup']);
            $this->db->bind('admin', $data['admin']);
            $this->db->bind('penyelesaian', $data['penyelesaian']);
            $this->db->bind('status', $data['status']);
            $this->db->bind('catatan', $data['catatan']);
            $this->db->bind('tglclose', $data['tglclose']);
            $this->db->bind('notiket', $data['notiket']);

            $this->db->execute();

            return $this->db->rowCount();
        }
    }
}
