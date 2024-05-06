#!/bin/bash

detect_OS_OSTYPE () {
    uname_OS=$(uname -s)
    
    case "$OSTYPE|$uname_OS" in
        msys*|MINGW*)
            echo "OS is [$OSTYPE] -- Windows" ;;

    
        *)
            echo "OS is [$OSTYPE] -- Unknown or unsupported"
        ;;
    esac
}

detect_OS_OSTYPE
