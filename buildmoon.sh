#!/bin/bash
if [ -f ZeroTierOne ] ; then
  git clone https://github.com/zerotier/ZeroTierOne
  ## cd ZeroTierOne && git checkout e0acccc3c918b59678033e585b31eb000c68fdf2
fi
SOURCE_ROOT="./ZeroTierOne"

docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gcc:4.9 \
c++ -std=c++11 -I${SOURCE_ROOT} -I${SOURCE_ROOT}/attic -I${SOURCE_ROOT}/ext -g -o mkmoonworld ${SOURCE_ROOT}/node/C25519.cpp ${SOURCE_ROOT}/node/Salsa20.cpp ${SOURCE_ROOT}/node/SHA512.cpp ${SOURCE_ROOT}/node/Identity.cpp ${SOURCE_ROOT}/node/Utils.cpp ${SOURCE_ROOT}/node/InetAddress.cpp ${SOURCE_ROOT}/osdep/OSUtils.cpp mkmoonworld.cpp -lm -lpthread -static
