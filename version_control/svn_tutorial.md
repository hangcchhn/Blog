
# Subversion

```sh
tar -zxvf apr-1.3.9.tar.gz
tar -zxvf apr-util-1.3.9.tar.gz

unzip sqlite-amalgamation-3071501.zip
mv sqlite-amalgamation-3071501 sqlite-amalgamation

./configure --prefix=/usr/svn --with-apr=/usr/svn/apr --with-apr-util=/usr/svn/apr/apr-util  --with-lz4=internal --with-utf8proc=internal
./configure --prefix=/usr/svn --with-apr=/usr/svn/apr --with-apr-util=/usr/svn/apr/apr-util
make
make install

vim /etc/profile

export SVN_HOME=/usr/svn
export PATH=$SVN_HOME/bin:$PATH

source /etc/profile



svnadmin create /usr/svn/repos

svnserve -d -r /usr/svn/repos --listen-port 3690


Error:svn: E220001: Unreadable path encountered; access denied
[general]
anon-access = none
auth-access = write

```