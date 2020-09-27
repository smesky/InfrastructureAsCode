# This manifest ensures that a file is a symbolic link of a file

file { '/home/ubntu/public_html':
  ensure  =>  'link',
  target  =>  '/var/www/ubuntu',
}

# It doesn't do, because /var/www/ubuntu is not created
# Puppet only does what it's asked to do
