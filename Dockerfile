FROM arm64v8/ubuntu

# setup environment
ENV LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu/tegra

# add deviceQuery
COPY deviceQuery /bin

# apt update & upgrade
RUN apt update \
&& apt upgrade --yes \
&& apt install python3-pip --yes \
&& apt clean 
