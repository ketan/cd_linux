
node default {
    group { "puppet":
            ensure => "present",
          }
}

node 'build' inherits default {
  package { "git" :
        ensure => "latest"
  }
  package { "openjdk-6-jdk" :
        ensure => "latest"
  }
  package { "ant" :
        ensure => "latest"
  }
  package { "libwagon-java" :
        ensure => "latest"
  }
  package { "maven2" :
        ensure => "latest"
  }
  package { "jenkins" :
        ensure => "latest"
  }
}
