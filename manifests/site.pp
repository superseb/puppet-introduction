filebucket { 'main':
    server => 'puppet',
    path   => false,
}
File { backup => 'main' }

node agent {
	notify { 'Greeting':
		message => 'Hello from Puppet Master',
	}
}
