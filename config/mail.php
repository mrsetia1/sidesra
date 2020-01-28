<?php
return [
  "driver" => "smtp",
  "host" => "smtp.mailtrap.io",
  "port" => 2525,
  "from" => array(
      "address" => "from@example.com",
      "name" => "Example"
  ),
  "username" => "9c6c31872496e9",
  "password" => "9464f8ed875c98",
  "sendmail" => "/usr/sbin/sendmail -bs"
];