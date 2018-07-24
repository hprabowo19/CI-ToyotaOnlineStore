<?php
$menu=array(
	'Users'=>array(		
		'icon'=>'fa fa-users',
		'slug'=>'pengguna',
		'child'=>array(
				'All User'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/pengguna",
					'target'=>"",
					),
			),
	),
	'CMS'=>array(		
		'icon'=>'fa fa-globe',
		'slug'=>'cms',
		'child'=>array(
				'Kategori Berita'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/cms/kategori",
					'target'=>"",
					),
				'Semua Berita'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/cms/berita",
					'target'=>"",
					),
				'Semua Halaman'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/cms/halaman",
					'target'=>"",
					),
			),
	),
	'Konfigurasi'=>array(		
		'icon'=>'fa fa-wrench',
		'slug'=>'konfigurasi',
		'child'=>array(
				'Aplikasi'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/konfigurasi",
					'target'=>"",
					),
				'Tema'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/konfigurasi/tema",
					'target'=>"",
					),				
			),
	),	
);