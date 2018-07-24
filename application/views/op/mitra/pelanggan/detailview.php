<?php
echo asset_select2();
$ref=$this->input->get('ref');
if(empty($data))
{
	redirect(base_url(akses().'/mitra/pelanggan'));
}
foreach($data as $row){	
}
echo form_open(base_url(akses().'/mitra/pelanggan/detail').'?ref='.$ref,array('class'=>'form-horizontal'));
?>
<input type="hidden" name="tokoid" value="<?=$row->pelanggan_id;?>"/>
<div class="form-group required">
	<label class="col-sm-2 control-label" for="">Nama Lengkap</label>
	<div class="col-md-6">
		<input type="text" name="nama" id="" class="form-control " autocomplete="off" placeholder="Nama Lengkap" required="" value="<?=set_value('nama',$row->nama_pelanggan);?>"/>
	</div>
</div>
<div class="form-group required">
	<label class="col-sm-2 control-label" for="">No Handphone</label>
	<div class="col-md-6">
		<input type="text" name="hp" id="" class="form-control " autocomplete="off" placeholder="Nomor Handphone" required="" value="<?=set_value('hp',$row->hp);?>"/>
	</div>
</div>
<div class="form-group required">
	<label class="col-sm-2 control-label" for="">Alamat</label>
	<div class="col-md-6">
		<textarea name="alamat" required="" class="form-control" placeholder="<?=set_value('alamat',$row->alamat);?>"></textarea>
	</div>
</div>
<div class="form-group ">
	<label class="col-sm-2 control-label" for="">Kota / Kab</label>
	<div class="col-md-6">
		<select name="kota" class="form-control select2" required="" style="width: " data-placeholder="Pilih Kota / Kab">
    		<option></option>
    		<?php
    		$dKota=$this->m_db->get_data('lokasi_kota',array(),'nama_kota ASC');
    		if(!empty($dKota))
    		{
				foreach($dKota as $rKota)
				{
					echo '<option value="'.$rKota->kota_id.'" '.set_select('kota',$rKota->kota_id).'>'.$rKota->nama_kota.'</option>';
				}
			}
    		?>
    	</select>
	</div>
</div>
<div class="form-group required">
	<label class="col-sm-2 control-label" for="">Email</label>
	<div class="col-md-6">
		<input type="email" name="email" id="" class="form-control " autocomplete="off" placeholder="Email Anda" required="" value="<?=set_value('email',$row->email);?>"/>
	</div>
</div>
<div class="form-group required">
	<label class="col-sm-2 control-label" for="">Username</label>
	<div class="col-md-6">
		<input type="text" name="username" id="" class="form-control " autocomplete="off" placeholder="Username" required="" value=<?=field_value('userlogin','user_id',$row->user_id,'username');?>>
	</div>
</div>
<div class="form-group required">
	<label class="col-sm-2 control-label" for="">Password</label>
	<div class="col-md-6">
		<input type="password" name="password" id="" class="form-control " autocomplete="off" placeholder="Password" required="" value=<?=field_value('userlogin','user_id',$row->user_id,'password');?>>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label">&nbsp;</label>
	<div class="col-md-6">
		<a href="javascript:history.back(-1);" class="btn btn-default btn-flat">Kembali</a>
	</div>
</div>
<?php echo form_close();?>