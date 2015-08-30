# Option parameters for setting up Pulp

class pulp::params {
  if $::operatingsystemmajrelease {
    $os_maj_release = $::operatingsystemmajrelease
  } else {
    $os_versions    = split($::operatingsystemrelease, '[.]')
    $os_maj_release = $os_versions[0]
  }
  $manage_repo = true
  $pulp_stable_repo_2_baseurl = "https://repos.fedorapeople.org/repos/pulp/pulp/stable/2/${::os_maj_release}/${::architecture}/"
  $pulp__stable_repo_2_gpgkey = "https://repos.fedorapeople.org/repos/pulp/pulp/GPG-RPM-KEY-pulp-2"
  $pulp_stable_repo_2_gpgcheck = '1'
  $pulp_stable_repo_2_enabled = '1'

  $pulp_package_list = [ 
    'pulp-puppet-plugins',
    'pulp-rpm-plugins',
    'pulp-selinux',
    'pulp-server',
    'python-gofer-qpid',
    'python-qpid',
    'python-qpid-qmf'
  ]
}
