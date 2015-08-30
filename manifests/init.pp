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
  $manage_repo = $pulp::params::manage_repo,
  $pulp_stable_repo_2_baseurl = $pulp::params::pulp_stable_repo_2_baseurl,
  $pulp_stable_repo_2_gpgkey = $pulp::params::pulp_stable_repo_2_gpgkey,
  $pulp_package_list = $pulp_params::pulp_package_list,
) inherits pulp::params {
  class { 'pulp::install': }
}
