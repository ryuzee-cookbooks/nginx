name             'nginx'
maintainer       'Ryutaro YOSHIBA'
maintainer_email 'ryuzee@gmail.com'
license          'MIT'
description      'Installs/Configures nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'
depends          'yum', "~> 3.0.4"
depends          'yum-epel'
