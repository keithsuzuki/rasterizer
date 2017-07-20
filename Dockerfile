# =============================================================================
# keithsuzuki/centos-rasterizer
#    https://github.com/keithsuzuki/rasterizer
#    $ docker build -t keithsuzuki/rasterizer .
# CentOS-6 6.9 x86_64
#
# =============================================================================

FROM centos:centos6.9

# =============================================================================
# install modules for 32bit apps
RUN  yum -y install libstdc++.i686 \
  && yum -y install 'libstdc++.so.5' \
  && yum -y install zlib.i686

# =============================================================================
# install other modules
RUN  yum -y install unzip

# =============================================================================
# update modules
#RUN  yum -y update

# =============================================================================
# add project files
RUN  mkdir /home/pr
ADD  container/pcl.zip /home/pr/pcl.zip
ADD  container/startpcl.sh /tmp/startpcl.sh
ADD  container/submitpcl.sh /tmp/submitpcl.sh
RUN  cd /home/pr \
  && unzip pcl.zip \
  && rm pcl.zip \
  && chmod -R 744 pcl

# =============================================================================
CMD  /tmp/startpcl.sh
