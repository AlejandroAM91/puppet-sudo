# @summary 
#   Installs sudo appropiate software packages
#
# @param package_manage
#   Indicates if package instalation should be manage by puppet.
#
class sudo::install (
  Boolean $package_manage = true,
) {
  if $package_manage {
    package {'sudo':
      ensure => present,
    }
  }
}
