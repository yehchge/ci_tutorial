<?=$header?>

Login

<form action="<?=site_url('dashboard/login/submit') ?>" method="post">
	Email: <input type="text" name="email" />
	Password: <input type="password" name="password" />
	<input type="submit" />
</form>

<?=$footer?>