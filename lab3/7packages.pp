# This manifest installs 4 packages. The list of packages are stored in an array, declared only once

$texteditors = [ "vim", "naon", "jed", "jove" ]

package { $texteditors:
  ensure  => present,
}
