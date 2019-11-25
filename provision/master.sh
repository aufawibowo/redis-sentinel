# Copy APT sources list
sudo cp /vagrant/sources/sources.list /etc/apt/

sudo apt-get update -y

sudo apt-get install redis -y

sudo cp /vagrant/conf/redis_master.conf /etc/redis/redis.conf
sudo cp /vagrant/conf/redis_master_sentinel.conf /etc/redis/sentinel.conf
