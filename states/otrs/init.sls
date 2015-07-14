dependencies-pkgs:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-perl2
      - mysql-server
      - libdbd-odbc-perl
      - libarchive-zip-perl
      - libcrypt-eksblowfish-perl
      - libcrypt-ssleay-perl
      - libtimedate-perl
      - libencode-hanextra-perl
      - libgd-perl
      - libgd-text-perl
      - libgd-graph-perl
      - libio-socket-ssl-perl
      - libjson-xs-perl
      - libmail-imapclient-perl
      - libio-socket-ssl-perl
      - libnet-dns-perl
      - libnet-ldap-perl
      - libpdf-api2-perl
      - libtemplate-perl
      - libtemplate-perl
      - libtext-csv-xs-perl
      - libxml-parser-perl
      - libyaml-libyaml-perl

orts-folder:
  file.directory:
    - name: /opt/otrs
    - makedirs: true

otrs:
  user.present:
    - fullname: OTRS User
    - home: /opt/otrs
    - groups:
      - www-data
