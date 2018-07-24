<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('m_db');		
		$this->load->model('login_model');
		$this->load->model('cms_model');
		if(akses()!="admin")
		{
			$this->login_model->user_logout();
		}
	}
	
	function index()
	{		
		$meta['judul']="Semua Berita";
		$this->load->view('tema/header',$meta);
		$d['data']=$this->cms_model->konten_data(array('jenis'=>'berita'));
		$this->load->view(akses().'/cms/berita/beritaview',$d);
		$this->load->view('tema/footer');
	}
	
	function add()
	{
		$this->form_validation->set_rules('namakategori','Nama Berita','required');
		$this->form_validation->set_rules('beritakategoriid','ID Kategori','required');
		$this->form_validation->set_rules('slug','Isi Berita','required');
		if($this->form_validation->run()==TRUE)
		{
			$nama_kategori=$this->input->post('nama_kategori');
			$slug=$this->input->post('slug');
			if($this->cms_model->kategori_add($nama_kategori,$slug)==TRUE)
			{
				set_header_message('success','Tambah Berita','Berhasil menambah Berita');
				redirect(base_url(akses().'/cms/berita'));
			}else{
				set_header_message('danger','Tambah Berita','Gagal menambah Berita');
				redirect(base_url(akses().'/cms/berita'));
			}
		}else{
			$meta['judul']="Tambah Berita";
			$this->load->view('tema/header',$meta);
			$d['kategori']=$this->cms_model->kategori_data();
			$this->load->view(akses().'/cms/berita/beritaadd',$d);
			$this->load->view('tema/footer');
		}
	}
	
	function edit()
	{
		$this->form_validation->set_rules('namakategori','Nama Berita','required');
		$this->form_validation->set_rules('beritakategoriid','ID Kategori','required');
		$this->form_validation->set_rules('slug','Isi Berita','required');
		if($this->form_validation->run()==TRUE)
		{
			$beritakategoriid=$this->input->post('beritakategoriid');
			$nama_kategori=$this->input->post('nama_kategori');
			$slug=$this->input->post('slug');
			if($this->cms_model->kategori_edit($beritakategoriid,$nama_kategori,$slug)==TRUE)
			{
				set_header_message('success','Ubah Berita','Berhasil mengubah Berita');
				redirect(base_url(akses().'/cms/berita'));
			}else{
				set_header_message('danger','Ubah Berita','Gagal mengubah Berita');
				redirect(base_url(akses().'/cms/berita'));
			}
		}else{
			$id=$this->input->get('id');
			$meta['judul']="Ubah Berita";
			$this->load->view('tema/header',$meta);
			$d['kategori']=$this->cms_model->kategori_data();
			$this->load->view(akses().'/cms/berita/beritaedit',$d);
			$this->load->view('tema/footer');
		}
	}
	
	function delete()
	{
		$id=$this->input->get('id');
		if($this->cms_model->kategori_delete($id)==TRUE)
		{
			set_header_message('success','Hapus Berita','Berhasil menghapus Berita');
			redirect(base_url(akses().'/cms/berita'));
		}else{
			set_header_message('danger','Hapus Berita','Gagal menghapus Berita');
			redirect(base_url(akses().'/cms/berita'));
		}
	}
}