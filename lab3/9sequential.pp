# Does things sequentially

package {'ssh':
  ensure  => latest,
  before  => Augeas['ssh_config'],
}

augeas {'sshd_config':
  context  => '/files/etc/ssh/sshd_config',
  changes  => 'set X11Forwarding yes',
}

service { 'ssh':
  ensure  =>  running,
  subscribe  =>  Augeas['sshd_config'],
}
