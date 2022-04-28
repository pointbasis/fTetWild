FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git cmake g++ libgmp3-dev

WORKDIR /app

RUN git clone https://github.com/pointbasis/fTetWild.git --recursive
WORKDIR /app/fTetWild/build
RUN cmake .. && make

#ENTRYPOINT ["/app/TetWild/build/FloatTetwild_bin"]

CMD ["/bin/bash"]
