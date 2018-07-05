class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9S5VklcDaBCMBu0miaaYqh/WCFhTdq9mxH2KbjchUY3FLZt3QT0xPhc3Fr5sBu1E5ebdM4fgdG83uPVrdslqdvSvaTIIYpQjEJnKy+/BDbn64/QhQIjGlTwbBwMJAejBlE78j8G5akfKBw73QVmJ1d0cWqO0rMht2E958IyQJPCqDPMSZlWXJulmkBdJbAhcqlD/Upz2x09+lGcxQjc/a0CRfXW16bGeEXtFaQ22O1Rq3u+1jgHV0JuN5PDEqmYTPlt0Gqv7n+mQJbM8QgwnItXv2w+YyYJDH/wedkjfYPXMjspvKsi7tVNgvJVvgZDvK7vo7sqPyWB8UQekkUUJ7',
	}  
}
