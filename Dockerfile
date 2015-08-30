##
##   Copyright (c) 2013 - 2015, Dmitry Kolesnikov
##   All Rights Reserved.
##
##   Licensed under the Apache License, Version 2.0 (the "License");
##   you may not use this file except in compliance with the License.
##   You may obtain a copy of the License at
##
##       http://www.apache.org/licenses/LICENSE-2.0
##
##   Unless required by applicable law or agreed to in writing, software
##   distributed under the License is distributed on an "AS IS" BASIS,
##   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
##   See the License for the specific language governing permissions and
##   limitations under the License.
##
FROM centos:latest

##
## install dependencies
RUN \
   yum -y install \
      sudo        \
      tar         \
      hostname    \
      unzip       

WORKDIR /tmp

##
## java
RUN curl -k \
   -H 'Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie' \
   -L -O http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm

RUN \
   rpm -Uvh jdk-8u45-linux-x64.rpm && \
   rm jdk-8u45-linux-x64.rpm

