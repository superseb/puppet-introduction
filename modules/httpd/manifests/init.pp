class httpd {

	case $::osfamily {
		'RedHat' : {
			$confDir = '/etc/httpd/conf.d'
			$apachePackage = 'httpd'
		}
		'Debian' : {
			$confDir = '/etc/apache2/sites-enabled'
			$apachePackage = 'apache2'
		}
		default  : {
			fail('Unsupported OS')
		}
	}

	package { $apachePackage:
	  ensure    => present,
	}

	service { 'httpd':
	  ensure  => running,
	  enable  => true,
	}

}


