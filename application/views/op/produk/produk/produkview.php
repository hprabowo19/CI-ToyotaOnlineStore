<?php
echo asset_datatables();
?>
<div>
	<a href="<?=base_url(akses().'/produk/produk/add');?>" class="btn btn-primary btn-flat">Tambah Produk</a>
</div>
<p>&nbsp;</p>
<table class="table table-bordered data-render">
	<thead>		
		<th>Nama Produk</th>
		<th>Metadata</th>
		<th>Harga</th>
		<th></th>
	</thead>
	<tbody>
		<?php
		if(!empty($data))
		{
			foreach($data as $row)
			{
				$id=$row->produk_id;
				$nama=$row->kode_produk."-".$row->nama_produk;
				$kategori=field_value('produk_kategori','kategori_id',$row->kategori_id,'nama_kategori');
				$merek=field_value('produk_merek','merek_id',$row->merek_id,'nama_merek');
				
			?>
			<tr>				
				<td><?=$nama;?></td>			
				<td>
					<li>Kategori <?=$kategori;?></li>
					<li>Merek <?=$merek;?></li>
				</td>				
				<td>Rp <?=number_format($row->harga,0);?></td>				
				
				<td>
					<a href="<?=base_url(akses().'/produk/produk/edit').'?id='.$id;?>" class="btn btn-xs btn-info"><i class="fa fa-pencil"></i></a>
					<a onclick="return confirm('Yakin ingin menghapus produk ini?');" href="<?=base_url(akses().'/produk/produk/delete').'?id='.$id;?>" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
			<?php
			}
		}
		?>
	</tbody>
</table>