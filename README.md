# Jenkins + Docker

<img src="https://jenkins.io/sites/default/files/jenkins_logo.png"/>

# Usage for local environment

If you want to start Jenkins application for the first time, or if you make any change into Dockerfile make sure you run this command, for the changes to take effect:
```
make build
```
Start Jenkins application:
```
make start
```
Turnoff Jenkins application:
```
make dowm
```

# Usage for server
At first, you have to deploy your application to server. Go to the `provisioning` directory. 
In the directory your will contain example files (`default.example.yml`,`hosts.example.yml`) that defines some variables. 
You should rename the files manually (`default.yml`,`hosts.yml`) and replace default values.
Then you have to run command, which prepare your server, move docker to your server and start application:
```
make main
```
if you want to update the environment, then run command:
```
make upgrade
```
