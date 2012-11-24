node default {
  notify { "hello_world":
    message => 'Puppet works!',
  }
}
