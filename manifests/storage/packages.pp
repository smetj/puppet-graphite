class graphite::storage::packages(){
  $packages = [ "python-carbon","python-whisper" ]
  package { "python-carbon":
      ensure => "installed",
      provider => "yum"
  } ~>
  file { "/etc/init.d/carbon-cache":
    mode => 540,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-cache.init"
  } ~>
  file { "/etc/sysconfig/carbon-cache":
    mode => 540,
    owner => root,
    group => root,
    source => "puppet:///modules/graphite/carbon-cache.sysconfig"
  }
}
