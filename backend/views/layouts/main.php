<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;
use webvimark\modules\UserManagement\components\GhostMenu;
use webvimark\modules\UserManagement\UserManagementModule;


AppAsset::register($this);
//Register class
// if (class_exists('ramosisw\CImaterial\web\MaterialAsset')) {
//     ramosisw\CImaterial\web\MaterialAsset::register($this);
// }
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/yii_logo.png" type="image/png">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Yii Application',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    if (Yii::$app->user->identity->superadmin == 0) {
        $menuItems = [
            ['label' => 'Home', 'url' => ['/site/index']],
            [
                'label' => 'User Management',
                'items' => [
                    ['label' => 'User', 'url' => 'index.php?r=user-management/user/index'],
                    ['label' => 'Change Password', 'url' => 'index.php?r=user-management/auth/change-own-password'],
                ],
            ],
            ['label' => 'Deparments', 'url' => 'index.php?r=departments/index'],
            
        ];
    }
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout btn-danger']
            )
            . Html::endForm()
            . '</li>';
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    if(Yii::$app->user->identity->superadmin == 1){
        echo Nav::widget([
            'items' => [
                ['label' => 'Home', 'url' => ['/site/index']],
                [
                    'label' => 'User Management',
                    'items' => [
                        ['label' => 'Users', 'url' => 'index.php?r=user-management/user/index'],
                        ['label' => 'Roles', 'url' => 'index.php?r=user-management/role/index'],
                        ['label' => 'Permissions', 'url' => 'index.php?r=user-management/permission/index'],
                        ['label' => 'Remissions Groups', 'url' => 'index.php?r=user-management/auth-item-group/index'],
                        ['label' => 'Visit Logs', 'url' => 'index.php?r=user-management/user-visit-log/index'],
                        //['label' => 'Users', 'url' => 'index.php?r=user-management/user/index'],
                         // '<li class="divider"></li>',
                         // '<li class="dropdown-header">Dropdown Header</li>',
                         // ['label' => 'Level 1 - Dropdown B', 'url' => '#'],
                    ],
                ],
                ['label' => 'Deparments', 'url' => 'index.php?r=departments/index'],
                // [
                //     'label' => 'Deparments',
                //     'items' => [
                //         ['label' => 'List', 'url' => 'index.php?r=departments/index'],
                //     ],
                // ],
            ],
            'options' => ['class' =>'nav-pills navbar-nav navbar-right'],
        ]);
    }

    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?php 
        // echo GhostMenu::widget([
        //     'encodeLabels'=>false,
        //     'activateParents'=>true,
        //     'items' => [
        //         [
        //             'label' => 'Backend routes',
        //             'items'=>UserManagementModule::menuItems()
        //         ],
        //         [
        //             'label' => 'Frontend routes',
        //             'items'=>[
        //                 ['label'=>'Login', 'url'=>['/user-management/auth/login']],
        //                 ['label'=>'Logout', 'url'=>['/user-management/auth/logout']],
        //                 ['label'=>'Registration', 'url'=>['/user-management/auth/registration']],
        //                 ['label'=>'Change own password', 'url'=>['/user-management/auth/change-own-password']],
        //                 ['label'=>'Password recovery', 'url'=>['/user-management/auth/password-recovery']],
        //                 ['label'=>'E-mail confirmation', 'url'=>['/user-management/auth/confirm-email']],
        //             ],
        //         ],
        //     ],
        // ]);
        ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="text-center">Copyright © <?= date('Y') ?> <a href="https://www.dexdevs.com" target="_blank"><b>DEXDEVS</b></a> | All Rights Reserved </p>

        <p class="pull-right"></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
