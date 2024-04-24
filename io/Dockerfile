# MIT License
#
# Copyright (c) 2024 Yegor Bugayenko
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

ENV GIT_SSL_NO_VERIFY=1

RUN apt-get update -y --fix-missing \
  && apt-get -y install --no-install-recommends \
    cmake=3.22.1-1ubuntu1.22.04.2 \
    git=1:2.34.1-1ubuntu1.10 \
    build-essential=12.9ubuntu3 \
    clang-14=1:14.0.0-1ubuntu1.1 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/IoLanguage/io.git \
  && cd io \
  && git checkout 7113659c4342e98e9a86482b25441775fa066a96 \
  && mkdir build \
  && cd build \
  && cmake .. \
  && xCPUARCH=armv7l make \
  && make install \
  && io --version

WORKDIR /purify

COPY . /purify
