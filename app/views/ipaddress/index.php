<div class="container col-sm-8">
    <h5 style="font-weight: bold;">Daftar Ip Address</h5>
    <?php Flasher::flash(); ?>
    <div class="box">
        <div class="box-inner">
            <div class="box-content">
                <table id="myTable" class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                    <thead>
						<tr>
							<th>No</th>
							<th>IP Address</th>
							<th>Host Name</th>
                            <th>User</th>
                            <th>Dept</th>
                            <th>Akses</th>
                            <th>MAC Address</th>
						</tr>
                    </thead>
                    <tbody>
						<?php $no= 1; foreach ( $data['ipaddress'] AS $fetchDataDok) : ?>
					<tr>
						<td><?= $no++; ?></td>
						<td>
                            <a href="<?= BASEURL; ?>/EditIpaddress/<?= $fetchDataDok['ID']; ?>">
                                <?= $fetchDataDok['IP']; ?>
                            </a>
                        </td>
						<td><?= $fetchDataDok['HostName']; ?></td>
                        <td><?= $fetchDataDok['User']; ?></td>
						<td><?= $fetchDataDok['Dept']; ?></td>
						<td><?= $fetchDataDok['Akses']; ?></td>
						<td><?= $fetchDataDok['MAC']; ?></td>
						<?php endforeach; ?>
					</tr>
                    </tbody>
                </table>
            </div>
        </div>
	</div>
</div>