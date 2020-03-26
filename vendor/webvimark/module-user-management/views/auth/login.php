<?php
/**
 * @var $this yii\web\View
 * @var $model webvimark\modules\UserManagement\models\forms\LoginForm
 */

use webvimark\modules\UserManagement\components\GhostHtml;
use webvimark\modules\UserManagement\UserManagementModule;
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
?>

<div class="container" id="login-wrapper">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default" style="border: 3px solid #0050AD;">
				<div class="panel-heading">
					<img src="images/login.png" class="img-responsive">
					<!-- <h3 class="panel-title"><?= UserManagementModule::t('front', 'Authorization') ?></h3> -->
				</div>
				<div class="panel-body">

					<?php $form = ActiveForm::begin([
						'id'      => 'login-form',
						'options'=>['autocomplete'=>'off'],
						'validateOnBlur'=>false,
						'fieldConfig' => [
							'template'=>"{input}\n{error}",
						],
					]) ?>

					<?= $form->field($model, 'username')
						->textInput(['placeholder'=>$model->getAttributeLabel('username'), 'autocomplete'=>'off']) ?>

					<?= $form->field($model, 'password')
						->passwordInput(['placeholder'=>$model->getAttributeLabel('password'), 'autocomplete'=>'off']) ?>

					<?= (isset(Yii::$app->user->enableAutoLogin) && Yii::$app->user->enableAutoLogin) ? $form->field($model, 'rememberMe')->checkbox(['value'=>true]) : '' ?>

					<?= Html::submitButton(
						UserManagementModule::t('front', 'Login'),
						['class' => 'btn btn-primary btn-flat btn-block']
					) ?>

					<div class="row registration-block">
						<div class="col-sm-6">
							<?= GhostHtml::a(
								UserManagementModule::t('front', "Registration"),
								['/user-management/auth/registration']
							) ?>
						</div>
						<div class="col-sm-6 text-right">
							<?= GhostHtml::a(
								UserManagementModule::t('front', "Forgot password ?"),
								['/user-management/auth/password-recovery']
							) ?>
						</div>
					</div>
					<?php ActiveForm::end() ?>
					<table class="table table-hover table-striped table-condensed table-bordered">
						<tr>
							<th colspan="2" class="text-center bg-info" style="color: #286090">Login Credentials</th>
						</tr>
						<tr>
							<th>Username</th>
							<th>Password</th>
						</tr>
						<tr>
							<td>Superadmin</td>
							<td>superadmin</td>
						</tr>
						<tr>
							<td>Admin</td>
							<td>admin</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<?php
$css = <<<CSS
html, body {
	background: #E8F0FE;
	-webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
	box-shadow: inset 0 0 100px rgba(0,0,0,.5);
	height: 100%;
	min-height: 100%;
	position: relative;
	border: 15px solid #000000	;
	border-radius: 15px 30px;
}
#login-wrapper {
	position: relative;
	top: 6%;
}
#login-wrapper .registration-block {
	margin-top: 15px;
}
CSS;

$this->registerCss($css);
?>