
alias ssh_plutus='ssh root@${IP_PLUTUS}'
alias ssh_centaur='ssh root@${IP_CENTAUR}'
alias vlc_centaur='vlc rtsp://${IP_CENTAUR}/stream >> /tmp/vlc_centaur.log  2>&1 &'


alias jenkins_my_builds='firefox http://jenk
ns.vaddio.com/jenkins/user/nateg/builds'
alias jenkins_build_containerized='firefox jenkins.vaddio.com/jenkins/job/yocto-containerized-build/build'
alias dd_sdf='sudo dd if=./vaddio-plutus-debug-image.img of=/dev/sdf bs=1M ; sync'

