class profile::pupa::binstub {
  aio_binstub { 'puppet': }
  aio_binstub { 'r10k': }
  aio_binstub { 'hiera': }
  aio_binstub { 'facter': }
  aio_binstub { 'eyaml': }
  aio_binstub { 'gem': prefix => 'puppet', }
  aio_binstub { 'irb': prefix => 'puppet', }

  file { 'papply':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    path    => '/usr/local/bin/papply',
    content => file("${module_name}/papply"),
  }

  file { 'pdeploy':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    path    => '/usr/local/bin/pdeploy',
    content => file("${module_name}/pdeploy"),
  }
}
