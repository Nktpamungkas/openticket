<div class="container center_div">
	<h5 style="font-weight: bold;">OPEN TICKET TROUBLESHOUTING</h5><br>
    <?php Flasher::flash(); ?>
        
    <form action="<?= BASEURL; ?>/openticket/tambahOpenTicket" method="post">
        <h6 style="font-weight: bold;">Silahkan melengkapi Form dibawah ini untuk open tiket troubleshouting</h6>
        <div class="form-group col-md-3">
            <label>* Department</label>
        </div>
        <div class="form-group col-md-9">
            <select name='department' class='chosen-select form-control input-sm' required>
                <option value='' disabled selected>--Pilih Departmen--</option>
                <?php foreach ( $data['dept'] AS $fetchDataDok) : ?>
                <option value="<?= $fetchDataDok['dept']; ?>"><?= $fetchDataDok['dept']; ?> | <?= $fetchDataDok['namadept']; ?></option>
			    <?php endforeach; ?>
            </select>
        </div>

        <div class="form-group col-md-3">
            <label>* Nama Pelapor</label>
        </div>
        <div class="form-group col-md-9">
            <input type="text" class="form-control input-sm" name="namapelapor" required>
        </div>

        <div class="form-group col-md-3">
            <label>Alamat Email</label>
        </div>
        <div class="form-group col-md-9">
            <input type="text" class="form-control input-sm" name="email">
            <i>Jika anda mengisi alamat email ini, progress trouble shouting akan otomatis dikirimkan juga
                ke email tsb.</i>
        </div>

        <div class="form-group col-md-3">
            <label>* Kategori</label>
        </div>
        <div class="form-group col-md-9">
            <select name='kategori' class='chosen-select form-control input-sm' required>
                <option value='' disabled selected>--Pilih Salah Satu--</option>
                <?php foreach ( $data['kategori'] AS $fetchDataKategori) : ?>
                <option value="<?= $fetchDataKategori['id']; ?>"><?= $fetchDataKategori['Kategori']; ?></option>
			    <?php endforeach; ?>
            </select>
        </div>

        <div class="form-group col-md-3">
            <label>* Permasalahan</label>
        </div>
        <div class="form-group col-md-9">
            <textarea class="form-control" cols="55" rows="15" name="permasalahan" required></textarea>
        </div>

        <div class="form-group col-md-3">
        </div>
        <div class="form-group col-md-9">
            <input type="Submit" class="btn btn-warning" name="tambahOpenTicket" value="Open Ticket">
        </div>
    </form>
</div>
