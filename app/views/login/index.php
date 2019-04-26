<div class="container center_div">
    <h2 style="font-weight: bold;">Login</h3>
    <?php Flasher::flash(); ?>

      <form action="<?= BASEURL; ?>/Login/login_admin" method="post">
        <div class="form-group">
          <label>Username:</label>
          <input type="text" class="form-control input-sm" placeholder="Enter email" name="username" required>
        </div>
        <div class="form-group">
          <label>Password:</label>
          <input type="password" class="form-control input-sm" placeholder="Enter password" name="password" required>
        </div>
        <div class="form-group col-sm-6">
          <label>Captcha:</label>
          <td>
            <img src="<?= BASEURL_LOGIN; ?>/captcha.php" alt="gambar" name="captcha_images">
          </td>
        </div>
        <div class="form-group col-sm-6">
          <label>Retype Security Code:</label>
          <input type="text" class="form-control input-sm" name="nilaiCaptcha" required>   
        </div>
        <input type="submit" class="btn btn-success" value="Login">
      </form>
      <hr>
</div>
