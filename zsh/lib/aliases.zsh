alias ll='ls -la'
alias lh='ls -lah'
alias lr='ls -lahrS'
alias ...='cd ../..'
alias speedtest='wget --report-speed=bits -O /dev/null http://ftp.informatik.uni-frankfurt.de/debian.org/debian-cd/current/amd64/iso-cd/debian-8.3.0-amd64-netinst.iso'
alias pip_upgrade_all="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
