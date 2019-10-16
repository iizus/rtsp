FROM ubuntu


RUN apt update
RUN apt install -y git
RUN apt install -y g++
RUN apt install -y cmake

WORKDIR /home
RUN git clone https://github.com/mpromonet/h264_v4l2_rtspserver.git

WORKDIR h264_v4l2_rtspserver
RUN cmake .
RUN make install

RUN v4l2rtspserver -V


CMD v4l2rtspserver
