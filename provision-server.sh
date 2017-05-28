# enable console colors
sed -i '1iforce_color_prompt=yes' ~/.bashrc

sudo apt-get update

# Install Git
sudo apt-get install -y git wget

# install python 3.6 for serverless  local functions
sudo apt-get install -y build-essential checkinstall

sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Install pip
sudo apt-get install -y python3-pip
sudo pip install --upgrade pip

# install nodejs 
curl -sL https://deb.nodesource.com/setup_6.x  | sudo -E bash -

sudo apt-get -y install nodejs

# Install Docker
curl -sSL https://get.docker.com/ | sudo sh
