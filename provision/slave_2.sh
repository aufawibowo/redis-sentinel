# Copy APT sources list
sudo cp /vagrant/sources/sources.list /etc/apt/

sudo apt-get update -y

sudo apt-get install redis -y


sudo cp /vagrant/conf/redis_slave_2.conf /etc/redis/redis.conf
sudo cp /vagrant/conf/redis_slave_2_sentinel.conf /etc/redis/sentinel.conf

