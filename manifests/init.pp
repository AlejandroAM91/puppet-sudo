# @summary 
#   Guides the basic setup and installation of sudo
#
# When this class is declared with the default options, Puppet:
# - Installs the appropriate sudo software package.
# - Places the required configuration files in a directory.
#
# @example
#   class { 'sudo': }
#
# @param package_manage
#   Indicates if package instalation should be manage by puppet.
#
class sudo (
  Boolean $package_manage = true,
) {
  class {'sudo::install':
    package_manage => $package_manage,
  }
}
