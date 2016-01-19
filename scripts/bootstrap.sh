# install python pip
sudo yum -y install python-pip
sudo pip install --upgrade pip

# install oracle jdk 8
if [ ! -f "/vagrant/resources/jdk-8u45-linux-x64.rpm" ]
then
	wget --no-cookies --no-check-certificate --progress=bar:force --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"
	sudo cp jdk-8u45-linux-x64.rpm /vagrant/resources
fi

sudo rpm -ivh /vagrant/resources/jdk-8u45-linux-x64.rpm

# install spark 1.6.0 pre-built for hadoop 2.6
if [ ! -f "/vagrant/resources/spark-1.6.0-bin-hadoop2.6.tgz" ]
then
	wget --progress=bar:force http://ftp.wayne.edu/apache/spark/spark-1.6.0/spark-1.6.0-bin-hadoop2.6.tgz
	sudo cp spark-1.6.0-bin-hadoop2.6.tgz /vagrant/resources
fi

sudo tar -zxf /vagrant/resources/spark-1.6.0-bin-hadoop2.6.tgz
sudo chown -R vagrant:vagrant spark-1.6.0-bin-hadoop2.6

# configure log4j
sudo cp /vagrant/resources/log4j.properties /home/vagrant/spark-1.6.0-bin-hadoop2.6/conf
sudo chown -R vagrant:vagrant spark-1.6.0-bin-hadoop2.6/conf/log4j.properties


# install zepplin 0.5.5
if [ ! -f "" ]
then    
    wget --progress=bar:force http://mirrors.koehn.com/apache/incubator/zeppelin/0.5.5-incubating/zeppelin-0.5.5-incubating-bin-all.tgz
    sudo cp zeppelin-0.5.5-incubating-bin-all.tgz /vagrant/resources
fi

sudo tar -zxf /vagrant/resources/zeppelin-0.5.5-incubating-bin-all.tgz
sudo chown -R vagrant:vagrant zeppelin-0.5.5-incubating-bin-all
