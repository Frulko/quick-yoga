#!/bin/sh
make -C /Users/guillaumedumoulin/Desktop/app/build_macos -f /Users/guillaumedumoulin/Desktop/app/build_macos/CMakeScripts/ZERO_CHECK_cmakeRulesBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
