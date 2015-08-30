class pulp::install {
  yumrepo {'pulp-2-stable':
    name     => 'Pulp 2 Production Releases',
    baseurl  => $pulp::pulp_baseurl,
    gpgkey   => $pulp::pulp_gpgkey,
    enabled  => $pulp::pulp_enabled,
    gpgcheck => $pulp::pulp_gpgcheck,
  }
  package { $pulp::package_list:
    ensure => present,
  }
}
