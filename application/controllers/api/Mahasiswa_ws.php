<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa_ws extends BD_Controller {
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->auth();
    }


    function mahasiswa_get() {
        $id = $this->get('nim');
        $data['mahasiswa'] = $this->db->query("SELECT mahasiswa.nim,mahasiswa.nama_mhs,prodi.nama_prodi FROM mahasiswa,prodi WHERE mahasiswa.id_prodi=prodi.id_prodi  order by nim desc")->result();
        if ($id != '') {
        $data['mahasiswa'] = $this->db->query("SELECT mahasiswa.nim,mahasiswa.nama_mhs,prodi.nama_prodi FROM mahasiswa,prodi WHERE mahasiswa.nim = '$id' AND mahasiswa.id_prodi=prodi.id_prodi  order by nim desc")->result();
        }
        $this->response($data, 200);
    }    

    function mahasiswa_post() {
        $data = array(
                    'nim'           => $this->post('nim'),
                    'nama_mhs'          => $this->post('nama_mhs'),
                    'id_prodi'    => $this->post('id_prodi'));
        $insert = $this->db->insert('mahasiswa', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    //Menghapus salah satu data kontak
    function mahasiswa_delete() {
        $nim = $this->delete('nim');
        $this->db->where('nim', $nim);
        $delete = $this->db->delete('mahasiswa');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }


    function mahasiswa_put(){
        $nim = $this->put('nim');
        $data = array(
            'nim'    =>  $this->put('nim'),
            'nama_mhs'  =>  $this->put('nama_mhs'),
            'id_prodi' =>  $this->put('id_prodi'),
        );
        
        $this->db->where('nim', $nim);
        $update = $this->db->update('mahasiswa', $data);

        if($update){
            $this->response($data, 200);
        }
        else{
            $this->response(array('status' => 'fail'), 502);
        }
    }





}
