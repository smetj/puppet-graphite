class graphite::packages(){
  $packages = [ "python-carbon","python-whisper" ]
  
  anchor { "graphite::packages::start":
  } ->
  package { $packages:
    ensure => "installed",
    provider => "yum"
  } ->
  anchor { "graphite::packages::end":
  }
}
