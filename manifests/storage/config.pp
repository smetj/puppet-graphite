class graphite::storage::config{
file { "carbon-cache.conf":
    path    => "/etc/carbon/carbon-cache.conf",
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("${module_name}/etc/carbon/carbon-cache.conf.erb"),
  }
}
