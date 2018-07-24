<?php
$menu=array(	
	'Mitra'=>array(		
		'icon'=>'fa fa-user',
		'slug'=>'mitra',
		'child'=>array(
				'Pelanggan'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/mitra/pelanggan",
					'target'=>"",
					),
			),
	),
	'Produk'=>array(		
		'icon'=>'fa fa-cube',
		'slug'=>'produk',
		'child'=>array(				
				'Kategori'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/produk/kategori",
					'target'=>"",
					),
				'Merek'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/produk/merek",
					'target'=>"",
					),				
				'Produk'=>array(
					'icon'=>'fa fa-circle-o',
					'url'=>base_url(akses())."/produk/produk",
					'target'=>"",
					),
			),
	),
	'Konten Web'=>array(		
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
);