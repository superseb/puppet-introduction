define httpd::vhost (
    $port,
    $docroot = "/var/www/${title}",
    $servername = $title) {

	Package['httpd']
	  -> File [$docroot]
	  -> File ["${servername}.conf"]
	  ~> Service['httpd']

	file { $docroot:
		ensure => directory,
 	}

 	file { "${docroot}/index.html":
 		content => "<h1>${servername}</h1>",
	}

	file { "${servername}.conf":
		path   => "/etc/httpd/conf.d/${servername}.conf",
		content => template('httpd/vhost.conf.erb'),
	}
}