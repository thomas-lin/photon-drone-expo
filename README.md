## How to run
```
cd [project]
vagrant up
```

## !Important
## How to fix VirtualGuestAddtion install failed, because the password is expired

```
vagrant ssh
type 'vagrant' for current password
type '[new password]'
type '[new password]' for confirm
vagrant reload
```

## How to resize disk and partition for large image
### Resize Disk Size

Install plugin
```
vagrant plugin install vagrant-disksize
```

Set new size on Vagrantfile
```
Vagrant.configure('2') do |config|
  ...
  config.disksize.size = '60GB'
end
```

Reload
```
vagrant reload
```

### Resize Partition Size
Install parted ( partition tool )
```
tdnf update && tdnf install parted
```

Check disk
```
fdisk -l
```

Resize partition
```
parted [device, ie. /dev/sda]
resizepart [Partition Number] [Size]
quit
```

Check disk size
```
df -h
```

Reboot to re-mount (or manual mount)
```
vagrant halt && vagrant up
```

## How to start container
```
vagrant ssh
cd /vagrant
docker-compose up -d
```

## ENV
- [HostIP] form Vagrantfile

## Initailize Gitea
- Open http://[HostIP]:3000 on browser
- Register first user for administrator
- !important ssh port change from 22 to some port within docker-composer.yaml
- !important hostname change from localhost to [HostIP]
- !important default_url change from http://localhost:3000 to http://[HostIP]:3000

## Initialize Drone and connect to Gitea
- Open http://[HostIP]:8000 on browser
- Login with user

## Config Gitea webhook
- Open repo on gitea
- change webhook port to match drone (ie. 8000)
