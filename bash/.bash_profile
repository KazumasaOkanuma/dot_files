# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

eval `ssh-agent` >/dev/null 2>&1

source ~/.ssh-agent

expect -c "
set timeout -1
spawn ssh-add $HOME/.ssh/$KEY_FILENAME
expect {
    \"Enter passphrase for\" {
        send \"$PASSPHRASE\r\"
    }
}
expect {
    \"denied\" { exit 1 }
    eof { exit 0 }
}
" >/dev/null 2>&1
