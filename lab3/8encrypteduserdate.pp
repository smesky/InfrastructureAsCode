# This manifest ensures that user data existed with encrypted password. Also makes sure group data exists before 
# ensuring user data exists.

group { 'data':
  ensure => present,
}

user { 'data':
  ensure => present,
# following lines are one:
  password => '$6....',
  gid  => 'data',
  home => '/home/data',
  managehome => true,
  shell  => '/bin/bash',
  groups  => 'sudo',
  require => Group['data'],
}
