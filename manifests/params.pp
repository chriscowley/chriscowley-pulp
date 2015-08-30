# Option parameters for setting up Pulp

class pulp::params {
  if $::operatingsystemmajrelease {
    $os_maj_release = $::operatingsystemmajrelease
  } else {
    $os_versions    = split($::operatingsystemrelease, '[.]')
    $os_maj_release = $os_versions[0]
  }
  $manage_repo = true,
  $pulp_baseurl = "https://repos.fedorapeople.org/repos/pulp/pulp/stable/2/${::os_maj_release}/${::architecture}/",
  $pulp_gpgkey = "https://repos.fedorapeople.org/repos/pulp/pulp/GPG-RPM-KEY-pulp-2",
  $pulp_gpgcheck = '1',
  $pulp_enabled = '1',
}
