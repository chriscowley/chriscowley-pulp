# == Class: pulp
#
# Installs a Pulp server
#
# === Parameters
#
#   N/A
#
# === Variables
#
#   N/A
#
#
# === Examples
#
#  class { 'pulp':
#  }
#
# === Authors
#
# Chris Cowley <chris@chriscowley.me.uk>
#
# === Copyright
#
# Copyright 2015 Chris Cowley
#
class pulp (
  $os_maj_release = $pulp::params::os_maj_release,
  $manage_repo = $pulp::params::$manage_repo,
  $pulp_baseurl = $pulp::params::pulp_baseurl
  $pulp_gpgkey = $pulp::params::pulp_gpgkey
) inherits pulp::params {
  if $manage_repo {
    yumrepo { 'pulp-2-stable':
      name     => 'Pulp 2 Production Releases',
      baseurl  => $pulp_baseurl,
      gpgkey   => $pulp_gpgkey,
      enabled  => $pulp_enabled,
      gpgcheck => $pulp_gpgcheck,
    }
  }
}
