class graphite::storage::config{
  file { "carbon-cache.conf":
      path    => "/etc/carbon/carbon-cache.conf",
      owner   => root,
      group   => root,
      mode    => 644,
      content => template("${module_name}/etc/carbon/carbon-cache.conf.erb"),
  }
  file { "storage-schemas.conf":
    path    => "/etc/carbon/storage-schemas.conf",
    owner   => root,
    group   => root,
    mode    => 644,
    content => template("${module_name}/etc/carbon/storage-schemas.conf.erb"),
  }
  file { "carbon.conf":
    path    => "/etc/carbon/carbon.conf",
    ensure  => "absent"    
  }
}
