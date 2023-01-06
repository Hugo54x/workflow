# add yourself as hyper-v administrator
net localgroup "Hyper-V Administrators" @(whoami) /add
