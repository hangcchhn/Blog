# HUE



- hue-release-3.12.0.tar.gz
https://codeload.github.com/cloudera/hue/tar.gz/refs/tags/release-3.12.0



- 依赖

```

yum install gcc gcc-c++ make

yum groupinstall 'Development Tools'

yum install asciidoc cyrus-sasl-devel cyrus-sasl-gssapi cyrus-sasl-plain krb5-devel libffi-devel libxml2-devel libxslt-devel make mysql mysql-devel openldap-devel python-devel sqlite-devel gmp-devel

```

- No local packages or download links found for cffi>=1.4.1
```sh
yum install python2-pip
pip install cffi

```


- maven cloudera repository
https://repository.cloudera.com/artifactory/cloudera-repos


- No local packages or download links found for logilab-astng>=0.24.3
```
pip install logilab-astng
pip install logilab-common==0.53.0
```


---
```sh
# production
build/env/bin/supervisor
desktop/conf.dist/hue.ini


# development
build/env/bin/hue runserver
desktop/conf/pseudo-distributed.ini

```