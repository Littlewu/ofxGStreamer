#!/usr/bin/env bash

wget https://gstreamer.freedesktop.org/data/pkg/osx/1.10.2/gstreamer-1.0-devel-1.10.2-x86_64.pkg
sudo installer -pkg gstreamer-1.0-devel-1.10.2-x86_64.pkg -target /
wget https://gstreamer.freedesktop.org/data/pkg/osx/1.10.2/gstreamer-1.0-1.10.2-x86_64.pkg
sudo installer -pkg gstreamer-1.0-1.10.2-x86_64.pkg -target /

if [ "$OF_BRANCH" == "stable" ]; then
    sed -ie 's/$(CXX) -c $(OPTIMIZATION_CFLAGS) $(CFLAGS) $(CXXFLAGS) $(OF_CORE_INCLUDES_CFLAGS) -MMD/$(CXX) -c $(OPTIMIZATION_CFLAGS) $(CFLAGS) $(CXXFLAGS) $(OF_CORE_INCLUDES_CFLAGS) $(ADDON_INCLUDE_CFLAGS) -MMD/g;' ~/openFrameworks/libs/openFrameworksCompiled/project/makefileCommon/compile.project.mk
fi

export GSTREAMER_1_0_ROOT_X86_64=C:\\gstreamer\\1.0\\x86_64\\
