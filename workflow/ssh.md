# SSH

## Auto start SSH Agent

```bash
# paste to ~/.bashrc

if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> .ssh/ssh-agent
   fi
   eval `cat .ssh/ssh-agent`
fi
```

## Get SSH agent status

```bash
eval `ssh-agent`
```

## Add SSH Key

```bash
ssh-add ~\.ssh\<private_key>
```

## Forward local SSH Agent to remote machine

```bash
# Paste to ~/.ssh/config
Host <Connection Name>
  HostName <IP or Hostname>
  Port <Port>
  User <Username>
  IdentityFile ~/.ssh/<private_key>
  ForwardAgent yes 
```

## Configure SSH Auth Socket in ssh config file (on MacOS)

```bash
# set ssh agent path
IdentityAgent /Users/<username>/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

Host *
    # Let ssh agent load all keys
    AddKeysToAgent yes
    # Mac specific: used to get stored passpharse of key
    UseKeychain yes
    ForwardAgent yes
```
