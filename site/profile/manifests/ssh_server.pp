class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLBgO1r5ZxDuGi/50KLRkLZqoWmA3WDk8pzoPE8JowhbGYp8viT6qcqrBMcxOBa5dTJ3KMXOAjPbgvkObWYSyIujqSbEP880UvIgSaIsSdFZzMHwfqp1XXwkPE5j415juiU7M9IwQngCX8ZyhLiA6E3nZd8+e+YsSc/ndcPxjb1Y9R0ckRq2xFpL4U6LuopyE2/DwWf5rcGjJPIQmHV2OfpdupBmhdIKAo8AwKcHhe1vbdt0L/5EPyo6AYfkGvUuN4pvvVg2hzRp9CVjqU0kFAP/EKKt7nXL9fsMAzRULJCj36L5s4CBvHEXtZ0ap6aOdpauj9XX1rcXHP5eQgU8Ep',
  }
}
