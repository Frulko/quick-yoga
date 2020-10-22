#!/bin/sh
make -C /Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake -f /Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/CMakeScripts/quickjs_cmakeRulesBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
