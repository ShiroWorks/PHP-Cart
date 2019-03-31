<?php
use Cart\App;
use Slim\Views\Twig;
use Braintree_Configuration as BrainConfig;
use Illuminate\Database\Capsule\Manager as Capsule;
session_start();

require __DIR__ . '/../vendor/autoload.php';

$app = new App;

$container = $app->getContainer();

$capsule = new Capsule;

$capsule->addConnection([
    'driver' => 'mysql',
    'host' => 'localhost',
    'database' => 'shoppingcart',
    'username' => 'root',
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => ''
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();

BrainConfig::environment('your environment');
BrainConfig::merchantId('your merchant Id');
BrainConfig::publicKey('your public key');
BrainConfig::privateKey('your private key');



require __DIR__ . '/../app/routes.php';

$app->add(new \Cart\MiddleWare\ValidationErrorsMiddleware($container->get(Twig::class)));
$app->add(new \Cart\MiddleWare\OldInputMiddleware($container->get(Twig::class)));