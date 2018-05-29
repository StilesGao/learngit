
#安装chrome
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

#安装g++\cmake\git
sudo apt-get install g++
sudo apt-get install cmake
sudo apt-get install git

#安装kdevelop
sudo apt-get install kdevelop

#安装eigen3\sophus
sudo apt-get install libeigen3-dev

git clone https://github.com/strasdat/Sophus.git
mkdir build
cd build
cmake ..

#安装opencv
sudo apt-get install build-essential libgtk2.0-dev libvtk5-dev libjpeg-dev libtiff5-dev libjasper-dev libopenexr-dev libtbb-dev
mkdir build
cd build
cmake ..
make
sudo make install
#安装ceres
sudo apt-get install liblapack-dev libsuitesparse-dev libcxsparse3.1.4 libgflags-dev libgoogle-glog-dev libgtest-dev
cd ~/ceres-solver-master
mkdir build
cd build
cmake ..
make
sudo make install

#安装g2o
sudo apt-get install libqt4-dev qt4-qmake libqglviewer-dev libsuitesparse-dev libcxsparse3.1.4 libcholmod3.0.6 
cd ~/g2o-master
mkdir build
cd build
cmake ..
make
sudo make install 

#安装PCL
sudo apt-get update
sudo apt-get install git build-essential linux-libc-dev
sudo apt-get install cmake cmake-gui
sudo apt-get install libusb-1.0-0-dev libusb-dev libudev-dev
sudo apt-get install mpi-default-dev openmpi-bin openmpi-common
sudo apt-get install libflann1.8 libflann-dev
sudo apt-get install libeigen3-dev
sudo apt-get install libboost-all-dev
sudo apt-get install libvtk5.10-qt4 libvtk5.10 libvtk5-dev
sudo apt-get install libqhull* libgtest-dev
sudo apt-get install freeglut3-dev pkg-config
sudo apt-get install libxmu-dev libxi-dev 
sudo apt-get install mono-complete
sudo apt-get install qt-sdk openjdk-8-jdk openjdk-8-jre
git clone https://github.com/PointCloudLibrary/pcl.git
cd pcl
mkdir release
cd release
cmake -DCMAKE_BUILD_TYPE=None -DCMAKE_INSTALL_PREFIX=/usr \
      -DBUILD_GPU=ON -DBUILD_apps=ON -DBUILD_examples=ON \
      -DCMAKE_INSTALL_PREFIX=/usr ..
make
sudo make install

#安装sublime3/汉化
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
cd sublime-text-imfix
./sublime-imfix

#安装DBow3
git clone https://github.com/rmsalinas/DBow3.git
sudo apt-get update
cd DBow3
mkdir build
cd build
cmake ..
make
sudo make install

#安装qtcreator
先下载http://download.qt.io/archive/qt/
cd /下载.run文件的文件夹
chmod +x qt-opensource-linux-x64-5.8.0.run
./qt-opensource-linux-x64-5.8.0.run
一路next

