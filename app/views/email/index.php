<div class="container <?php if ( isset ($_SESSION['userId'])) { echo 'col-sm-8'; }else { echo 'center_div'; } ?>">
	<h5 style="font-weight: bold;">Daftar Alamat Email</h5>
    <?php Flasher::flash(); ?>

	<div class="box">
        <div class="box-inner">
            <div class="box-content">
                <table id="myTable" class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                    <thead>
						<tr>
							<th>No</th>
							<th>Nama</th>
							<th>Departmen</th>
							<th>Alamat Email</th>
						</tr>
                    </thead>
                    <tbody>
						<?php $no= 1; foreach ( $data['email'] AS $fetchDataDok) : ?>
					<tr>
						<td><?= $no++; ?></td>
						<td>
							<?php if ( isset ($_SESSION['userId'])) { ?>
								<a href="<?= BASEURL; ?>/Editemail/<?= $fetchDataDok['No']; ?>"> 
									<?= $fetchDataDok['User']; ?> 
								</a>
							<?php }else{ ?>
								<?= $fetchDataDok['User']; ?>
							<?php } ?>
						</td>
						<td><?= $fetchDataDok['Dept']; ?></td>
						<td><?= $fetchDataDok['Email']; ?></td>
						<?php endforeach; ?>
					</tr>
                    </tbody>
                </table>
            </div>
        </div>
	</div>
</div>