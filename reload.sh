#################run this to recompile the changes to the files after installation (saves a little time)


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
