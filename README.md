puppet-graphite
===============

A Puppet Graphite module.

Usage
=====

    class { "graphite::carbon":
        storage_schema_retentions => [ "10s:1d" ]
    } ->
    class { "graphite::relay":
        relay_method              => "consistent-hashing",
        destinations              => ["localhost:2004:a"]
    } ->
    class { "graphite::web":
        carbonlink_hosts          => ["localhost:7002:a"],
        cluster_servers           => ["localhost:80"]
    } ->
    service { "httpd":
        ensure  => "running"
    }
