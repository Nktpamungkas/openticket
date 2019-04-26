<div class="container col-sm-8">
	<h5 style="font-weight: bold;">Daftar Ticket Yang Masuk</h5>
    <?php Flasher::flash(); ?>

	<div class="box">
        <div class="box-inner">
            <div class="box-content">
                <table id="myTable" class="table table-striped bootstrap-datatable datatable responsive">
                    <thead>
						<tr>
							<th width="150">Tgl Open</th>
							<th width="150">Nomor Ticket</th>
							<th>Nama Pelapor</th>
							<th>Status</th>
						</tr>
                    </thead>
                    <tbody>
						<?php foreach ( $data['ticketlist'] AS $fetchDataDok) : ?>
					<tr>
						<td><?= $fetchDataDok['tglopen']; ?></td>
						<td style="font-weight: bold;">
							<a href="<?= BASEURL; ?>/EditOpenTicket/<?= $fetchDataDok['notiket']; ?>">
								<?= $fetchDataDok['notiket']; ?>
							</a>
						</td>
						<td><?= $fetchDataDok['namapelapor']; ?></td>
						<td>
							<?php
								if ($fetchDataDok['status'] == "1"){ 
									echo "OPEN";
								} elseif ($fetchDataDok['status'] == "2"){ 
									echo "IN PROGRESS";
								} elseif ($fetchDataDok['status'] == "3"){
									echo "PENDING";
								} elseif ($fetchDataDok['status'] == "4"){ 
									echo "CLOSE";
								}else{
									echo "Status Tidak DIketahui";
								}
							?>
						</td>
						<?php endforeach; ?>
					</tr>
                    </tbody>
                </table>
            </div>
        </div>
	</div>
</div>