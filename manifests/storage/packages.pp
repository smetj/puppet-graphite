class graphite::storage::packages(){
  file { "/etc/init.d/carbon-cache":
    mode => 755,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-cache.init",
    require => Class [ "graphite::packages" ]
  } ->
  file { "/etc/sysconfig/carbon-cache":
    mode => 664,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-cache.sysconfig",
    require => Class [ "graphite::packages" ]
  }
  file { "/etc/carbon":
    mode => 755
  }
  file { "/etc/carbon/storage-aggregation.conf":
    mode => 664,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/storage-aggregation.conf",
    require => Class [ "graphite::packages" ]
  }
}
