class graphite::relay::packages(){
  file { "/etc/init.d/carbon-relay":
    mode => 540,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-relay.init",
    require => Class [ "graphite::packages" ]
  } ->
  file { "/etc/sysconfig/carbon-relay":
    mode => 540,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-relay.sysconfig",
    require => Class [ "graphite::packages" ]
  }
}
