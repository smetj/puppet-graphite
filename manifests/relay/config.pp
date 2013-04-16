class graphite::relay::config{
  file { "carbon-relay.conf":
      path    => "/etc/carbon/carbon-relay.conf",
      owner   => root,
      group   => root,
      mode    => 644,
      content => template("${module_name}/etc/carbon/carbon-relay.conf.erb"),
      require => File["/etc/carbon"]
  } ->
  file { "relay-rules.conf":
    path    => "/etc/carbon/relay-rules.conf",
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("${module_name}/etc/carbon/relay-rules.conf.erb")
  } ->
  file { "/etc/sysconfig/carbon-relay":
    mode => 540,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-relay.sysconfig",
  }
}
