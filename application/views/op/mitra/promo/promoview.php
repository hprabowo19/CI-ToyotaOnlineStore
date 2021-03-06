<?php
echo asset_datatables();
?>
<div>
	<a href="<?=base_url(akses().'/mitra/promo/add');?>" class="btn btn-primary btn-flat">Tambah Kupon Promo</a>
</div>
<p>&nbsp;</p>
<table class="table table-bordered data-render">
	<thead>		
		<th>Judul</th>
		<th>Deskripsi</th>
		<th>Nilai</th>
		<th>Berlaku</th>
		<th></th>
	</thead>
	<tbody>
		<?php
		if(!empty($data))
		{
			foreach($data as $row)
			{
				$id=$row->promo_id;
				$berlaku_1=date("d-m-Y",strtotime($row->mulai));
				$berlaku_2=date("d-m-Y",strtotime($row->selesai));
				$berlaku=$berlaku_1." hingga ".$berlaku_2;
			?>
			<tr>				
				<td><?=$row->judul;?></td>
				<td><?=$row->deskripsi;?></td>
				<td>Rp <?=number_format($row->nilai,0);?></td>
				<td><?=$berlaku;?></td>				
				<td>
					<a href="<?=base_url(akses().'/mitra/promo/produk').'?id='.$id;?>" class="btn btn-xs btn-default">Produk</a>
					<a href="<?=base_url(akses().'/mitra/promo/gambar').'?id='.$id;?>" class="btn btn-xs btn-default">Banner</a>
					<a href="<?=base_url(akses().'/mitra/promo/edit').'?id='.$id;?>" class="btn btn-xs btn-info"><i class="fa fa-pencil"></i></a>
						<a onclick="return confirm('Yakin ingin menghapus promo ini?');" href="<?=base_url(akses().'/mitra/promo/delete').'?id='.$id;?>" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
			<?php
			}
		}
		?>
	</tbody>
</table>