<?php

class Login extends Controller {
    private $db;

    public function index()
    {
        $data['judul'] = 'Login';
        $this->view('templates/header', $data);
        $this->view('login/index');
        $this->view('templates/footer');
    }

    public function __construct()
    {
        $this->db = new Database;
    }

    public function login_admin()
    {
        $nama = $_POST['username'];
        $pas = $_POST['password'];
        $nilaiCaptcha = $_POST["nilaiCaptcha"];

        if($_SESSION["captcha"]!=$nilaiCaptcha){
            Flasher::setFlash('Code Captcha', 'Not Match', 'danger');
            header('Location: ' . BASEURL . '/login');
            exit;
        }else{
            $query = "SELECT * FROM tbluser WHERE nama = '$nama' AND password = '$pas'";
            $count = $this->db->query($query);
            $this->db->execute();
            $RowCount = $this->db->rowCount();

            if( $RowCount > 0 ){
                $dataUser = $this->db->single();
                session_start();
                $_SESSION['userId'] = $dataUser['ID'];

                Flasher::setFlash('Berhasil', 'Login', 'success');
                header('Location: ' . BASEURL . '/admin');
                exit;
            } else {
                Flasher::setFlash('Name or Password', 'Not Match', 'danger');
                header('Location: ' . BASEURL . '/login');
                exit;
            }
        }
        // var_dump($_POST); //untuk melihat data yg diinput
    }
}