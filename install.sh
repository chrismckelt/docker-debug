# https://docs.confluent.io/confluent-cli/current/install.html
wget -qO - https://packages.confluent.io/confluent-cli/deb/archive.key | apt-key add
add-apt-repository "deb https://packages.confluent.io/confluent-cli/deb stable main"
apt -y update
apt -y install confluent-cli