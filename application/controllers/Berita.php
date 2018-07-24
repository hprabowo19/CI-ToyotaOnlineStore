<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library('m_db');
	}
	
	function index()
	{
		$slug2=$this->uri->segment(2);
		$s=array(
		'slug'=>$slug2,
		);
		if($this->m_db->is_bof('berita_kategori',$s)==FALSE)
		{
			$nama_kategori=$this->m_db->get_row('berita',$s,'nama_kategori');
			$meta['nama_kategori']="$nama_kategori | ".baca_konfig('nama-aplikasi');
			$meta['judulhalaman']="$nama_kategori";
			$meta['homepage']=FALSE;
			$this->load->view('html/header',$meta);
			$d['data']=$this->m_db->get_data('berita_kategori',$s);
			$this->load->view('html/beritaview',$d);
			$this->load->view('html/footer');
		}else{
			show_404("Halaman tidak ditemukan");
		}
	}
}