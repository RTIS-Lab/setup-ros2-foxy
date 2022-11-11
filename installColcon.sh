# install colcon
sudo apt install python3-colcon-common-extensions -y

# setup colcon_cd
if ! grep -Fxq "source /usr/share/colcon_cd/function/colcon_cd.sh" ~/.bashrc
then
  echo "source /usr/share/colcon_cd/function/colcon_cd.sh" >> ~/.bashrc
fi

if ! grep -Fxq "export _colcon_cd_root=/opt/ros/foxy/" ~/.bashrc
then
  echo "export _colcon_cd_root=/opt/ros/foxy/" >> ~/.bashrc
fi

# setup colcon tab completion
if ! grep -Fxq "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" ~/.bashrc
then
  echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc
fi
