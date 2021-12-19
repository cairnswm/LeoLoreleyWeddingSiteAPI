<?php

include_once "settings.php";
include_once "apicore.php";

$config = Array(
	"database" => Array("server" => $db_server, 
						"username" => $db_username, 
						"password" => $db_password, 
						"database" => $db_database),
	"gifts" => Array(
		"tablename" => "loreley_gifts",
					"key" => "id",
					"select" => Array("id","name","link","image","num","pledged","pledgebyid","pledgeby"),
					"update" => Array("pledged","pledgebyid","pledgeby")
	),
	"guests" => Array(
		"tablename" => "loreley_guests",
					"key" => "id",
					"select" => Array("id","code","name","maxguests","coming","comingkids"),
					"update" => Array("coming","comingkids")
	),
	"guestcode" => Array(
		"tablename" => "loreley_guests",
					"key" => "code",
					"select" => Array("id","code","name","attending","maxguests","coming","comingkids","email","song", "special", "dietry"),
					"update" => Array("attending","coming","comingkids", "song", "special", "dietry")
	)
	/*,
    "friendrating" => Array(
					"tablename" => "friendrating",
					"key" => "id",
					"select" => Array("id","name","icon"),
					"update" => Array("name","icon"),
					"delete" => true,
					"create" => Array("id","name","icon")
				),
    "profile" => Array(
					"key" => "id",
					"select" => Array("id","name","area","gender","status","avatar","message","tagline"),
					"update" => Array("name","area","gender","status","avatar","message","tagline"),
					"delete" => false,
					"create" => Array("id","name","area","gender","status","message","tagline")
				),
	"friends" => Array(
					"tablename" => "friends",
					"key" => "id",
					"select" => Array("id","profileid","friendid","rating"),
					"update" => Array("rating"),
					"delete" => false,
					"create" => Array("id","profileid","friendid","rating"),
	)*/
);

Run($config);
?>
