<h1>Selamat Datang, <?=user_info('nama');?></h1>
<p>&nbsp;</p>
<div class="row">	
	<div class="col-md-12">
	<a href="<?=base_url(akses().'/pengguna');?>" class="btn btn-lg btn-default">
		<span class="fa fa-users fa-2x"></span> User Manager
	</a>
	
	<a href="<?=base_url(akses().'/cms/berita');?>" class="btn btn-lg btn-default">
		<span class="fa fa-newspaper-o fa-2x"></span> Berita (CMS)
	</a>
	
	<a href="<?=base_url(akses().'/cms/halaman');?>" class="btn btn-lg btn-default">
		<span class="fa fa-file fa-2x"></span> Halaman (CMS)
	</a>
	
	<a href="<?=base_url(akses().'/konfigurasi');?>" class="btn btn-lg btn-default">
		<span class="fa fa-wrench fa-2x"></span> Info Aplikasi
	</a>
	
	<a href="<?=base_url(akses().'/konfigurasi/tema');?>" class="btn btn-lg btn-default">
		<span class="fa fa-paint-brush fa-2x"></span> Template Manager
	</a>
	</div>
</div>