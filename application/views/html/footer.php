</div>
        	<!-- End Featured -->

        	<div class="clearfix visible-sm"></div>
        </div>
	</div>

	<footer class="hidden-print">
    	<div class="container">
        	<div class="col-lg-3 col-md-3 col-sm-3">
        		<div class="column">
        			<h4>Information</h4>
        			<ul>
        				<?php
							$dHalaman=$this->m_db->get_data('berita',array('jenis'=>'halaman'));
							if(!empty($dHalaman))
							{
								foreach($dHalaman as $rHalaman)
								{
									$urlpage=base_url().'informasi/'.$rHalaman->slug;
								?>
								<li><a href="<?=$urlpage;?>"><?=$rHalaman->judul;?></a></li>
								<?php
								}
							}
							?>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-3">
        		<div class="column">
        			<h4>Kategori</h4>
        			<ul>
        				<?php
		            	$dKat=produk_kategori();
		            	if(!empty($dKat))
		            	{
							foreach($dKat as $rKat)
							{
								$slugCat=string_create_slug($rKat->nama_kategori);
								$urlcat=base_url().'produk/kategori/'.$rKat->kategori_id.'/'.$slugCat;
							?>
							<li><a href="<?=$urlcat;?>"><?=$rKat->nama_kategori;?></a></li>
							<?php
							}
						}
		            	?>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-3">
        		<div class="column">
        			<h4>Kontak Info</h4>
        			<ul>
        				<li><a href="<?=base_url();?>kontak-kami">Kontak Kami</a></li>
        				<li><a href="sms:+6281321027019?body=Halo%20Admin%20Mohon%20Info%20Pricelist%20Mobil%20Toyota%20TQ" class="fa fa-mobile"> SMS 081321027019</a></li>
        				<li><a href="tel:+6281321027019" class="fa fa-phone"> Telpon 081321027019</a></li>
        				<li><a href="https://api.whatsapp.com/send?phone=6285798947019&text=Halo%20Admin%20Mohon%20Info%20Pricelist%20Mobil%20Toyota%20TQ" class="fa fa-whatsapp"> Whatsapp 085798947019</a></li>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-3">
        		<div class="column">
        			<h4>Follow Us</h4>
        			<ul class="social">
        				<li><a href="https://www.instagram.com/tunastoyotagatsu/"><i class="fa fa-instagram"></i> Instagram</a></li>
        				<li><a href="https://www.facebook.com/tunastoyota.gatotsubroto/"><i class="fa fa-facebook"></i> Facebook</a></li>
        				<li><a href="https://goo.gl/VWhp8T"><i class="fa fa-whatsapp"></i> Whatsapp</a></li>
        			</ul>
        		</div>
        	</div>
        </div>
        <div class="navbar-inverse text-center copyright">
            <strong>Copyright &copy; <?=date("Y");?> <a href="https://www.salessukses.com"> Toyota Online Store.</a> </strong> All rights reserved.
        </div>
    </footer>

    <a href="#top" class="back-top text-center hidden-print" onclick="$('body,html').animate({scrollTop:0},500); return false">
    	<i class="fa fa-angle-double-up"></i>
    </a>

    
    <script src="<?=base_url();?>assets/html/js/bootstrap.js"></script>
    <script src="<?=base_url();?>assets/html/js/jquery.bxslider.min.js"></script>
    <script src="<?=base_url();?>assets/html/js/jquery.blImageCenter.js"></script>
    <script src="<?=base_url();?>assets/html/js/mimity.js"></script>
</body>
</html>