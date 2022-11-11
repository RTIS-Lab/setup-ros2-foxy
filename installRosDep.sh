#install dependencies
sudo apt install python3-bloom python3-rosdep fakeroot -y

# initilize rosdep
sudo rosdep init
rosdep update
