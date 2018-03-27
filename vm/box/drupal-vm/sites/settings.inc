<?php

/**
 * @file
 * VM Drupal instance settings.
 */

// Set database details in VM.
$databases = [
  'default' =>
    [
      'default' =>
        [
          'database' => 'govcms8',
          'username' => 'govcms',
          'password' => 'govcms',
          'host' => 'localhost',
          'port' => '',
          'driver' => 'mysql',
          'prefix' => '',
        ],
    ],
];
