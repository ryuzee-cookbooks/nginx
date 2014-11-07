name             'nginx'
maintainer       'Ryutaro YOSHIBA'
maintainer_email 'ryuzee@gmail.com'
license          'MIT'
description      'Installs/Configures nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'
depends          'ca-certificates'
depends          'yum', "~> 3.3"
depends          'yum-epel'
