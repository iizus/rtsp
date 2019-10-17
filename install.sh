sudo apt update
sudo apt install -y git
sudo apt install -y g++
sudo apt install -y cmake

cd ~
git clone https://github.com/mpromonet/h264_v4l2_rtspserver.git
cd h264_v4l2_rtspserver
cmake .
sudo make install

v4l2rtspserver -V
