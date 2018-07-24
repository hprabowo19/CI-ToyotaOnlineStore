<div class="col-lg-3 col-md-3 col-sm-12 hidden-print">

<!-- Categories -->
<div class="col-lg-12 col-md-12 col-sm-6">
	<div class="no-padding">
    		<span class="title">Kategori</span>
    	</div>

		<div id="main_menu">
            <div class="list-group panel panel-cat">
            	<?php
            	$dKat=produk_kategori();
            	if(!empty($dKat))
            	{
					foreach($dKat as $rKat)
					{
						$slugCat=string_create_slug($rKat->nama_kategori);
						$urlcat=base_url().'produk/kategori/'.$rKat->kategori_id.'/'.$slugCat;
					?>
					<a href="<?=$urlcat;?>" class="list-group-item" ><?=$rKat->nama_kategori;?></a>
					<?php
					}
				}
            	?>                            
            </div>
        </div>

	</div>
	<!-- End Categories -->

	<!-- Product Selection, visible only on large desktop -->
    <div class="col-lg-12 col-md-8 col-sm-6">
        <div class="row text-center">
            <div class="col-lg-12 col-md-12 hero-feature">
                <div class="thumbnail">
                	<!-- <a href="detail.html" class="link-p first-p"> -->
                    	<img src="<?=base_url();?>assets/html/images/salestoyota.jpeg" alt="">
                    <!-- </a> -->
                    <div class="caption prod-caption">
                        <h4><a href="<?=base_url();?>informasi/kontak-kami">Aghna Salesman Toyota</a></h4>
                        <a href="sms:+6281321027019?body=Saya%20Order" class="fa fa-mobile"> SMS 081321027019</a>
                        <a href="tel://+6281321027019" class="fa fa-phone"> Telpon 081321027019</a>
                        <a href="https://goo.gl/VWhp8T" class="fa fa-whatsapp"> Whatsapp 085798947019</a>
                        <p>
                        	<div class="btn-group">
	                        	<a href="<?=base_url();?>member/daftar" class="btn btn-primary" class="fa fa-envelope"> Hubungi Saya</a>
                        	</div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Product Selection -->

</div>