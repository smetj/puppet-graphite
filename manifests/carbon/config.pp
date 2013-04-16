class graphite::carbon::config{
  $base_dirs = [ "/data","/data/carbon","/data/carbon/lists","/data/carbon/whisper"]

  file { "/etc/carbon":
      path    => "/etc/carbon",
      ensure  => "directory",
      owner   => root,
      group   => root,
  }
  file { $base_dirs:
    ensure => directory,
    owner => carbon,
    group => carbon
  }
  file { "carbon-cache.conf":
      path    => "/etc/carbon/carbon-cache.conf",
      owner   => root,
      group   => root,
      mode    => 644,
      content => template("${module_name}/etc/carbon/carbon-cache.conf.erb"),
      require => [ File["/etc/carbon"], File[$base_dirs] ]
  } ->
  file { "storage-schemas.conf":
    path    => "/etc/carbon/storage-schemas.conf",
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("${module_name}/etc/carbon/storage-schemas.conf.erb"),
  } ->
  file { "carbon.conf":
    path    => "/etc/carbon/carbon.conf",
    ensure  => "absent"
  } ->
  file { "/etc/sysconfig/carbon-cache":
    mode => 664,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-cache.sysconfig",
  } ->
  file { "/etc/carbon/storage-aggregation.conf":
    mode => 664,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/storage-aggregation.conf",
  }
  iptables { 'carbon_tcp_2003':
    proto  => 'tcp',
    dport  => '2003',
    state  => 'NEW',
    jump   => 'ACCEPT',
  }
}
