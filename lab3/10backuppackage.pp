# ensures software package is installed
# creates a cron entry to run the command mybackup /home/data as root, every 30mins
# includes a notify relationship b/n package and cron resource declarations

package { 'mybackup':
  ensure  => 'latest',
}

cron { 'rand':
  command  => "0,30 * * * * root mybackup /home/data",
  user  => root,
  subscribe  => Package['mybackup'],
}

