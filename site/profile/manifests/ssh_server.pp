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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCns/UGk3eHHuK/tVwXEqYmm8QH2XXYROdDmVZ8dd2I6PxP95rOYQGFm0vVC0RodF/VyzTldHV/Dyl0EyCRfxM+qryvuYb+WUvUvhoo7ko3EiwrubxJOYQD7SC1z7Ef9okiNcaYLBMVKHojiLd7Saxme/Keusfz4MFKalDP37GJsIoTPkU29NqaNvHUJjhYiYc6qJFYtgshMull8nUPdeqMgsoxE4/x/vB4HIhJFoeRMRdIR+G/Ilos3jKzMYWcLN0dfr03fAVTVEKOdynY/41RJ8TmL+UWx751zaTgVdDyID2Ci2LTrQbkkL1Udoo4b+4pgKjRHFcSyniLhZ0rWqwx',
	}  
}
