#!/usr/bin/env bash

################################################################################
# Yocto
# https://vaddio.atlassian.net/wiki/display/VNG/Build+Guide
################################################################################

# Install the Required Software
export REPO_PATH=~/Git/vng/

# export METAVADDIO_URI=meta-milestone
export METAVADDIO_URI=meta-vaddio

# Set up the Environment
export VAD_SCM_REPO=git@bitbucket.org/vaddio/vaddio_ngenetzky-vng.git
export MACHINE=vaddio-plutus
# * use of VAD_SCM_ variables is optional, in their absence the vng tip is built
# export VAD_SCM_OBJ=<Sha 1>

export 'BB_ENV_EXTRAWHITE=MACHINE DISTRO TCMODE TCLIBC HTTP_PROXY http_proxy HTTPS_PROXY https_proxy FTP_PROXY ftp_proxy FTPS_PROXY ftps_proxy ALL_PROXY all_proxy NO_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND SOCKS5_PASSWD SOCKS5_USER SCREENDIR STAMPS_DIR VAD_SCM_REPO VAD_SCM_PROTOCOL VAD_SCM_OBJ VAD_PRODUCT_VERSION'
################################################################################

export D_USB0=/dev/ttyUSB0
export D_USB1=/dev/ttyUSB1
export IP_PLUTUS=10.30.208.1
export IP_CENTAUR=10.30.208.2

export USER_JENKINS="nateg"
export URL_JENKINS_BUILDS="http://jenkins.vaddio.com/jenkins/user/nateg/builds"

