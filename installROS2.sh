# Set locale

locale  # check for UTF-8

sudo apt update -y && sudo apt install locales -y
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

# Setup Sources
sudo apt install software-properties-common -y
sudo add-apt-repository universe


sudo apt update && sudo apt install curl gnupg2 lsb-release -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS 2 packages

sudo apt update -y
sudo apt upgrade -y
sudo apt install ros-foxy-desktop python3-argcomplete -y
sudo apt install ros-dev-tools -y

if ! grep -Fxq "source /opt/ros/foxy/setup.bash" ~/.bashrc
then
  echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
fi
