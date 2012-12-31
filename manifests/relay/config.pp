class graphite::relay::config{
  file { "carbon-relay.conf":
      path    => "/etc/carbon/carbon-relay.conf",
      owner   => root,
      group   => root,
      mode    => 644,
      content => template("${module_name}/etc/carbon/carbon-relay.conf.erb"),
  }
  file { "relay-rules.conf":
    path    => "/etc/carbon/relay-rules.conf",
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("${module_name}/etc/carbon/relay-rules.conf.erb")
  }
}
