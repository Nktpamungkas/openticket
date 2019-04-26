<div class="container col-sm-8">
    <label class="blue">>>Edit Daftar Ip Address</label><br>

    <form action="<?= BASEURL; ?>/EditIpaddress/ubahIpaddress" method="POST">
        <table border="0">
            <tbody>
                <tr>
                    <td style="font-weight: bold;">Kode</td>
                    <td>:</td>
                    <td>
                        <?php
                            $ip = $data['IP'];

                            echo $data['Dept']."-".substr($ip, -5); 
                        ?>
                        <input type="hidden" value="<?php
                            $ip = $data['IP'];

                            echo $data['Dept']."-".substr($ip, -5); 
                        ?>" name="kode">
                    </td>

                    <td style="font-weight: bold;">Ip Address</td>
                    <td>:</td>
                    <td>
                        <input type="text" name="ip" value="<?= $data['IP'] ?>" class="form-control input-sm">
                        <input type="hidden" name="id" value="<?= $data['ID'] ?>" >
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;">Host Name</td>
                    <td>:</td>
                    <td><input type="text" name="hostname" value="<?= $data['HostName'] ?>" class="form-control input-sm"></td>

                    <td style="font-weight: bold;">Department</td>
                    <td>:</td>
                    <td>
                        <select name='dept' class='chosen-select form-control input-sm' required>
                            <option value='' disabled selected> </option>
                            <?php foreach ( $data['code_dept'] AS $fetchDataKategori) : ?>
                            <option value="<?= $fetchDataKategori['code']; ?>"
                            <?php if ($fetchDataKategori['code'] == $data['Dept']) {
                                echo "SELECTED";
                            }?>><?= $fetchDataKategori['code'].' - '.$fetchDataKategori['dept_name']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;">User</td>
                    <td>:</td>
                    <td><input type="text" name="user" value="<?= $data['User'] ?>" class="form-control input-sm"></td>

                    <td style="font-weight: bold;">MAC Address</td>
                    <td>:</td>
                    <td><input type="text" name="mac" value="<?= $data['MAC'] ?>" class="form-control input-sm"></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;">Akses</td>
                    <td>:</td>
                    <td>
                        <select name='akses' class='chosen-select form-control input-sm' required>
                            <option value='' disabled selected> </option>
                            <?php foreach ( $data['akses'] AS $fetchDataKategori) : ?>
                            <option value="<?= $fetchDataKategori['akses']; ?>"
                            <?php if ($fetchDataKategori['akses'] == $data['Akses']) {
                                echo "SELECTED";
                            }?>><?= $fetchDataKategori['akses']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </td>

                    <td style="font-weight: bold;" valign="top">Catatan</td>
                    <td valign="top">:</td>
                    <td>
                        <textarea class="form-control input-sm" name="catatan"><?= $data['Catatan'] ?></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
        <hr>
        <hr>
            <tr>
                <td colspan="6">
                    <input type="submit" value="Update" class="btn btn-info btn-block">
                </td>
            </tr> 
    </form>
</div>