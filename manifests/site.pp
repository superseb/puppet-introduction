filebucket { 'main':
    server => 'master',
    path   => false,
}
File { backup => 'main' }

node default {}

node agent {
	notify { 'Greeting':
		message => 'Hello from Puppet Master',
	}
}
