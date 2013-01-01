class graphite::web::packages(){
  $packages = [ "graphite-web","bitmap-fonts-compat" ]
  package { $packages:
    ensure => "installed",
    provider => "yum"
  }
}
