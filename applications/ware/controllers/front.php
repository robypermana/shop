<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('crud_model');
    }

    public function index()
	{

        $data['status']=$this->session->userdata('Status');


		$this->template->load('frontBase','front',$data);
	}

	public function in_pack($data)
	{

        $data2['kategori'] = $this->crud_model->get_only('barang','KODE_KLASIFIKASI');

	    if($data == 1){
            if (!($this->session->has_userdata('Status'))) {
                redirect('login');
            }
            $this->template->load('frontBase','packages/gratis',$data2);


        }elseif($data == 2)
        {
            if (!($this->session->has_userdata('Status'))) {
                redirect('login');
            }
            $this->template->load('frontBase','packages/premium',$data2);
        }


	}

	public function pack_store($index)
    {
        if($index == 1) {
            $packages['ID_User'] = $this->session->userdata('id_user');
            $packages['Nama_User'] = $this->session->userdata('uname');
            $packages['Package'] = $this->input->post('kategori');
            $packages['jml_brng'] = 20;
            $packages['type'] = 1;
            $packages['url'] = base_url()."api_server/?tab=barang&id_user=" . $packages['ID_User'] . "&kat1=KODE_KLASIFIKASI&kat2=".urlencode($this->input->post('kategori'));


            date_default_timezone_set('Asia/Jakarta');
            $api_access['key'] = $this->session->userdata('Tokenize');
            $api_access['date_created'] = date('Y-m-d H:i:s');
            $api_access['date_modified'] = date('Y-m-d H:i:s');
            $api_access['controller'] = "/api_server";

            /**echo "paket gratisan";
             * echo "<pre>";
             * print_r($packages);
             * print_r($api_access);
             * die();**/

            $cek1 = $this->crud_model->check('access','key',$api_access['key']);
            $cek2 = $this->crud_model->check('packages','Package',$packages['Package']);
            $cek3 = $this->crud_model->check('packages','type',$packages['type']);

            if ($cek1>0){

                if($cek2 == 0 || $cek3 == 0) {
                    $this->crud_model->insert($packages,'packages');
                    $this->session->set_flashdata('success', 'Pengambilan Paket API berhasil');
                    redirect('front','refresh');

            }
            }elseif($cek1==0){
                $this->crud_model->insert($api_access, 'access');
                $this->crud_model->insert($packages, 'packages');
                $this->session->set_flashdata('success', 'Pengambilan Paket API berhasil');
                redirect('front','refresh');

            }else{
                $this->session->set_flashdata('error', 'Pengambilan Paket API gagal');
                redirect('front','refresh');
            }
        }
        elseif($index == 2)
        {
            $packages['ID_User']    = $this->session->userdata('id_user');
            $packages['Nama_User']  = $this->session->userdata('uname');
            $packages['Package']    = $this->input->post('kategori');
            $packages['jml_brng']   = $this->input->post('jml');
            $packages['type']       = 2;
            $packages['url']        = base_url()."api_server/?tab=barang&id_user=".$packages['ID_User']."&kat1=KODE_KLASIFIKASI&kat2=".urlencode($this->input->post('kategori'));


            date_default_timezone_set('Asia/Jakarta');
            $api_access['key']= $this->session->userdata('Tokenize');
            $api_access['date_created']  = date('Y-m-d H:i:s');
            $api_access['date_modified'] = date('Y-m-d H:i:s');
            $api_access['controller'] = "/api_server";

            /**echo "paket gratisan";
            echo "<pre>";
            print_r($packages);
            print_r($api_access);
            die();**/

            $cek1 = $this->crud_model->check('access','key',$api_access['key']);
            $cek2 = $this->crud_model->check('packages','Package',$packages['Package']);
            $cek3 = $this->crud_model->check('packages','type',$packages['type']);

            if ($cek1>0){

                if($cek2 == 0 || $cek3 == 0) {
                    $this->crud_model->insert($packages,'packages');
                    $this->session->set_flashdata('success', 'Pengambilan Paket API berhasil');
                    redirect('front','refresh');

                }
            }elseif($cek1==0){
                $this->crud_model->insert($api_access, 'access');
                $this->crud_model->insert($packages, 'packages');
                $this->session->set_flashdata('success', 'Pengambilan Paket API berhasil');
                redirect('front','refresh');
            }else{
                $this->session->set_flashdata('error', 'Pengambilan Paket API Gagal');
            }
        }
    }
}