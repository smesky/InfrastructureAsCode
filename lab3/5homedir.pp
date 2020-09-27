# This is a puppet manifest that ensures that my home directory /home/ubuntu is only accessible by me (w permission 0750)

file { '/home/ubuntu':
  mode  =>  '0750',
}
