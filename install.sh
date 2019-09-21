sudo apt-get update
sudo apt-get install libncurses5-dev libncursesw5-dev
sudo apt-get install cmake libudev-dev libxrandr-dev python-dev swig
cd
git clone https://github.com/Pulse-Eight/platform.git
mkdir platform/build
cd platform/build
cmake ..
make
sudo make install
cd
git clone https://github.com/Pulse-Eight/libcec.git

##these lines replace the original with my code before compiling#############################
cp ~/murti-cec-remote/murti-cec-client.cpp ~/libcec/src/cec-client/cec-client.cpp
cp ~/murti-cec-remote/layout.h ~/libcec/src/cec-client/
####################################################################################

mkdir libcec/build
cd libcec/build
cmake -DRPI_INCLUDE_DIR=/opt/vc/include -DRPI_LIB_DIR=/opt/vc/lib ..
make -j4
sudo make install
sudo ldconfig
