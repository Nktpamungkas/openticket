<div class="container col-sm-8">
    <label class="blue">>>Edit Daftar Email</label><br>

    <form action="<?= BASEURL; ?>/Editemail/ubahEmail" method="POST">
        <table border="0">
            <tbody>
                <tr>
                    <td style="font-weight: bold;" class="col-sm-2">Ip Address</td>
                    <td class="col-sm-1">:</td>
                    <td>
                        <input type="hidden" name="no" value="<?= $data['No'] ?>" >
                        <input type="text" name="ip" value="<?= $data['IP'] ?>" class="form-control input-sm">
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;" class="col-sm-2">User</td>
                    <td class="col-sm-1">:</td>
                    <td>
                        <input type="text" name="user" value="<?= $data['User'] ?>" class="form-control input-sm">
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;" class="col-sm-2">Departement</td>
                    <td class="col-sm-1">:</td>
                    <td>
                        <input type="text" name="dept" value="<?= $data['Dept'] ?>" class="form-control input-sm">
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;" class="col-sm-2">Email</td>
                    <td class="col-sm-1">:</td>
                    <td>
                        <input type="text" name="email" value="<?= $data['Email'] ?>" class="form-control input-sm">
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;" class="col-sm-2">Jabatan</td>
                    <td class="col-sm-1">:</td>
                    <td>
                        <input type="text" name="jabatan" value="<?= $data['Jabatan'] ?>" class="form-control input-sm">
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
            <br>
    </form>
</div>