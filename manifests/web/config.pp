class graphite::web::config{
  exec { "syncdb":
    command => '/usr/lib/python2.6/site-packages/graphite/manage.py syncdb --noinput'
  }
  file { "/var/lib/graphite-web/graphite.db":
    group   =>  "apache",
    mode    =>  "0664",
    require =>  Exec["syncdb"]
  }
}
