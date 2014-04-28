<?=$header?>

<h1>Login</h1>

<form action="<?=site_url('admin/login/submit') ?>" method="post">
	Email: <input type="email" name="email" />
	Password: <input type="password" name="password" />
	<input type="submit" />
</form>

<?=$footer?>