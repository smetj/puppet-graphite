class graphite::web::config{
  file { '/etc/selinux/graphite':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => 0755,
  } ->
  file { 'graphite.pp':
    ensure => present,
    path   => '/etc/selinux/graphite/graphite.pp',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/${module_name}/etc/selinux/graphite.pp",
  } ->
  file { 'graphite.te':
    ensure => present,
    path   => '/etc/selinux/graphite/graphite.te',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/${module_name}/etc/selinux/graphite.te",
  } ->
  selmodule { 'graphite.pp':
    ensure => 'present',
    selmodulepath => '/etc/selinux/graphite/graphite.pp'
  }
  file { "/data/graphite":
    ensure  => directory,
    owner   => apache,
    group   => apache
  } ->
  file { "/data/graphite/storage":
    ensure  => directory,
    owner   => apache,
    group   => apache
  } ->
  file { "/data/graphite/storage/rrd":
    ensure  => directory,
    owner   => apache,
    group   => apache
  }
  file { "local_settings.py":
    path    => "/usr/lib/python2.6/site-packages/graphite/local_settings.py",
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("${module_name}/local_settings.py.erb"),
  }
  file { "/var/log/graphite":
  	ensure	=> directory,
  	owner	=> apache,
  	group   => apache
  }
  file { 'graphite.conf':
    ensure => present,
    path   => '/etc/httpd/conf.d/graphite.conf',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/${module_name}/graphite.conf",
  } ->
  iptables { 'graphite_tcp_80':
    proto  => 'tcp',
    dport  => '80',
    state  => 'NEW',
    jump   => 'ACCEPT',
  }
}
