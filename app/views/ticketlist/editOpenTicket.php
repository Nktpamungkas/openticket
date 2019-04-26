<div class="container col-sm-8">
    <label class="blue">>>Daftar Ticket Yang Masuk</label><br>

    <form action="<?= BASEURL; ?>/EditOpenTicket/ubahOpenTicket" method="POST">
        <table border="0">
            <tbody>
                <tr>
                    <td style="font-weight: bold;">Notiket</td>
                    <td>:</td>
                    <td><?= $data['notiket'] ?>
                        <input type="hidden" value="<?= $data['notiket'] ?>" name="notiket">
                    </td>

                    <td style="font-weight: bold;">Tanggal Open</td>
                    <td>:</td>
                    <td><?= $data['tglopen'] ?></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;">Nama Pelapor</td>
                    <td>:</td>
                    <td><?= $data['namapelapor'] ?></td>

                    <td style="font-weight: bold;">Email</td>
                    <td>:</td>
                    <td><?= $data['email'] ?></td>
                </tr>
                <tr>
                    <td valign="top" style="font-weight: bold;">Permasalahan</td>
                    <td valign="top">:</td>
                    <td><textarea rows="4" cols="35" name="permasalahan" class="autogrow form-control" required><?= $data['permasalahan'] ?></textarea></td>

                    <td style="font-weight: bold;" valign="top">Kategori</td>
                    <td valign="top">:</td>
                    <td valign="top">
                        <select name='kategori' class='chosen-select form-control input-sm' required>
                            <option value='' disabled selected> </option>
                            <?php foreach ( $data['openticket'] AS $fetchDataKategori) : ?>
                            <option value="<?= $fetchDataKategori['id']; ?>"
                            <?php if ($fetchDataKategori['id'] == $data['kategori']) {
                                echo "SELECTED";
                            }?>><?= $fetchDataKategori['kategori']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </td>
                </tr>            
            </tbody>
        </table>
        <hr><center>*Di isi oleh Department IT</center><hr>
        <table border="0">
            <tbody>
                <tr>
                    <td style="font-weight: bold;">Jenis</td>
                    <td>:</td>
                    <td>
                        <select name='jenis' class='chosen-select form-control input-sm' required>
                            <option value='' disabled selected> </option>
                            <?php foreach ( $data['jenis'] AS $fetchDataKategori) : ?>
                            <option value="<?= $fetchDataKategori['id']; ?>"
                            <?php if ($fetchDataKategori['id'] == $data['hardware']) {
                                echo "SELECTED";
                            }?>><?= $fetchDataKategori['jenis']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </td>

                    <td style="font-weight: bold;">Kerusakan</td>
                    <td>:</td>
                    <td>
                        <select name='kerusakan' class='chosen-select form-control input-sm' required>
                            <option value='' disabled selected> </option>
                            <?php foreach ( $data['jeniskerusakan'] AS $fetchDataKategori) : ?>
                            <option value="<?= $fetchDataKategori['id']; ?>"
                            <?php if ($fetchDataKategori['id'] == $data['kerusakan']) {
                                echo "SELECTED";
                            }?>><?= $fetchDataKategori['kerusakan']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;">Tgl Follow Up</td>
                    <td>:</td>
                    <td><input type="datetime" name="tglfollowup" class="form-control" value="<?= $data['tglfollowup']; ?>" required></td>

                    <td style="font-weight: bold;">Admin</td>
                    <td>:</td>
                    <td>
                    <input class="form-control" type="text" name="admin" value="<?= $data['admin'] ?>" required>
                    </td>
                </tr>
                <tr>
                    <td valign="top" style="font-weight: bold;">Penyelesaian</td>
                    <td valign="top">:</td>
                    <td><textarea rows="4" name="penyelesaian" cols="40" class="autogrow form-control" ><?= $data['penyelesaian'] ?></textarea></td>

                    <td style="font-weight: bold;" valign="top">Status</td>
                    <td valign="top">:</td>
                    <td valign="top">
                        <select name='status' class='chosen-select form-control input-sm' required>
                            <?php foreach ( $data['statusticket'] AS $fetchDataKategori) : ?>
                            <option value="<?= $fetchDataKategori['id']; ?>"
                            <?php if ($fetchDataKategori['id'] == $data['status']) {
                                echo "SELECTED";
                            }?>><?= $fetchDataKategori['status']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </td>
                </tr> 
                <tr>
                    <td valign="top" style="font-weight: bold;">Catatan</td>
                    <td valign="top">:</td>
                    <td><textarea rows="4" name="catatan" cols="40" class="autogrow form-control"><?= $data['catatan'] ?></textarea></td>

                    <td style="font-weight: bold;" valign="top">Tanggal Close</td>
                    <td valign="top">:</td>
                    <td valign="top"><input type="datetime" name="tglclose" class="form-control" value="<?= $data['tglclose'] ?>" required></td>
                </tr>   
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="checkbox" checked> Kirim email
                            </label>
                        </div>
                        <input type="submit" class="btn btn-info" value="Update">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>