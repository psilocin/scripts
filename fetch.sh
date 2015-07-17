#!/bin/sh

# my version of screenfetch 

USER=$(whoami)
HOST=$(uname -n)
OS=$(cat /etc/issue)
KERNEL=$(uname -r)
UPTIME=$(uptime -p | sed s:"up "::)
PACKAGES=$(pacman -Q | wc -l)
ENTROPY=$(cat /proc/sys/kernel/random/entropy_avail)
WM="OpenBox"

bc=$(tput bold)
c0=$(tput setaf 0)
c1=$(tput setaf 1)
c2=$(tput setaf 2)
c3=$(tput setaf 3)
c4=$(tput setaf 4)
c5=$(tput setaf 5)
c6=$(tput setaf 6)
c7=$(tput setaf 7)
rc=$(tput sgr0)

lc=${bc}${c6}
nc=${bc}${c6}
tc=${bc}${c7}
fc=${bc}${c6}
sc=${c6}

cat <<EOF
${fc}                  ${nc}${USER}${rc}${tc}@${rc}${nc}${HOST}${rc}
${fc}           ${rc}       ${lc}OS:${rc} ${tc}${OS}${rc}
${fc}        ███${rc}       ${lc}KERNEL:${rc} ${tc}${KERNEL}${rc}
${fc}       ██ ██${rc}      ${lc}UPTIME:${rc} ${tc}${UPTIME}${rc}
${fc}      ██▃▃▃██${rc}     ${lc}ENTROPY:${rc} ${tc}${ENTROPY}${rc}
${sc}     ██${rc}     ${sc}██${rc}    ${lc}PACKAGES:${rc} ${tc}${PACKAGES}${rc}
${sc}    ███     ███${lc}   SHELL:${rc} ${tc}${SHELL}${rc}
                  ${lc}WM:${rc} ${tc}${WM}${rc}
EOF

notify-send Scrot 'Taking screenshot...'
