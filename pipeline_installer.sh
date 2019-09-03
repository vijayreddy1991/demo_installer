sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
apt-get install sudo
sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-xenial
echo "***********************************download compose**********************************"
sudo wget "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -O /usr/local/bin/docker-compose
echo "*****************************permissions****************************************"
sudo chmod +x /usr/local/bin/docker-compose
echo "***************env****************"
echo "***********************************download**********************************"
curl -o installer.tar.gz https://entplus.jfrog.io/artifactory/pipelines-installers/installer/pipelines-0.9.1.tar.gz -u"$int_ART_keys_ART_USERNAME":"$int_ART_keys_ART_API_KEY"
echo "***********************************tar**********************************"
mkdir -p installer && tar -C installer -xvzf installer.tar.gz
cd installer
sudo ./pipelines install --devmode --global-password "$int_ART_keys_g_password" --rt-url http://mill.jfrog.info:12414/artifactory --rt-username "$int_ART_keys_user" --rt-password "$int_ART_keys_password"@1234
