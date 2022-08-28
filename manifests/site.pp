node default {
  file {'/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
    owner => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
