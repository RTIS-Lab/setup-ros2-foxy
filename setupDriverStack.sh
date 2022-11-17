set -e

# create Workspace in Home dir
if ! [ -d "~/f1tenth_ws/src" ]; then
  cd ~
  mkdir -p f1tenth_ws/src

  # make ROS2 Workspace
  cd f1tenth_ws
  colcon build

  # clone repo into src
  cd src
  git clone https://github.com/f1tenth/f1tenth_system.git

  # Update sub repos
  cd f1tenth_system
  git submodule update --init --force --remote

  # Install dependencies using rosdep
  cd ~/f1tenth_ws
  rosdep update
  rosdep install --from-paths src -i -y

  # Build Workspace
  colcon build
else
  echo "Setup Skipped: Directory ~/f1tenth_ws/src already exists."
fi
