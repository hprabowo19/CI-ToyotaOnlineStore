<?php
echo asset_datatables();
?>
<?php
if(empty($data))
{
	redirect(base_url(akses().'/cms/kategori'));
}
foreach($data as $row){
}
echo add_js(base_url().'assets/plugin/ckeditor/ckeditor.js');
echo validation_errors();
echo form_open(base_url(akses()).'/cms/kategori/edit',array('class'=>'form-horizontal'));
?>
<input type="hidden" name="kategoriid" value="<?=$row->berita_kategori_id;?>"/>
<div class="col-md-7">
	<div class="panel panel-default">
		<div class="panel-heading">Edit Kategori</div>
		<div class="panel-body">
		<div class="form-group">
			<label class="col-sm-2 control-label" for="">Nama Kategori</label>
			<div class="col-md-10">
				<input type="text" name="nama_kategori" id="" class="form-control " autocomplete="" placeholder="" required="" value="<?=set_value('nama_kategori',$row->nama_kategori);?>"/>
			</div>
		</div>
		<div class="form-group">
			<textarea name="slug" class="form-control" id="slug" required="" placeholder="Isi Berita"><?=set_value('slug',$row->slug);?></textarea>
			</div>
			<script>
			CKEDITOR.replace('slug', {	    	    
	    		filebrowserBrowseUrl: '<?=base_url();?>filemanager/index_single',	    
			});
			</script>
		<div class="form-group">
			<label class="col-sm-2 control-label">&nbsp;</label>
			<div class="col-md-10">
				<button type="submit" class="btn btn-primary btn-flat">Update</button>
				<a href="javascript:history.back(-1);" class="btn btn-default btn-flat">Batal</a>
			</div>
		</div>
		<?php
		echo form_close();
		?>
		</div>
	</div>	
</div>
<div class="col-md-5">
	<table class="table table-bordered table-hover table-stripped data-render">
		<thead>
			<th>Nama Kategori</th>
			<th></th>
		</thead>
		<tbody>
			<?php
			if(!empty($data))
			{
				foreach($data as $row)
				{
					$id=$row->berita_kategori_id;
				?>
				<tr>
					<td><?=$row->nama_kategori;?></td>
					<td>
						<a href="<?=base_url(akses().'/cms/kategori/edit?id='.$id);?>" class="btn btn-flat btn-xs btn-info"><i class="fa fa-pencil"></i> Edit</a>
					<a onclick="return confirm('Yakin ingin menghapus kategori <?=$row->nama_kategori;?> ?');" href="<?=base_url(akses().'/cms/kategori/delete?id='.$id);?>" class="btn btn-flat btn-xs btn-danger"><i class="fa fa-trash"></i> Delete</a>
					</td>
				</tr>
				<?php
				}
			}
			?>
		</tbody>
	</table>
</div>