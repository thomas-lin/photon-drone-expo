## How to run
```
cd [project]
vagrant up
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
