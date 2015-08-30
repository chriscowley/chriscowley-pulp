class pulp::install {
  yumrepo {'pulp-2-stable':
    name     => 'Pulp 2 Production Releases',
    baseurl  => $pulp::pulp_baseurl,
    gpgkey   => $pulp::pulp_gpgkey,
    enabled  => $pulp::pulp_enabled,
    gpgcheck => $pulp::pulp_gpgcheck,
  }
  if $pulp::install_qpidd == true {
    package { ['qpid-cpp-server', 'qpid-cpp-server-store']:
      ensure => present
    }
  }
  package { $pulp::pulp_package_list:
    ensure => present,
  }
}
