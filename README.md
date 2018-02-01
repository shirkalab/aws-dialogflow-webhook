- [Installation](#installation)
    - [Prerequisites](#prerequisites)
    - [AWS credential](#aws-credential)

- [Test](#test)

- [Deploy to AWS](#deploy-to-aws)


## Installation
### Prerequisites
- AWS client: [AWS cli](https://docs.aws.amazon.com/fr_fr/cli/latest/userguide/installing.html)
- Sam local: [Sam local](https://github.com/awslabs/aws-sam-local)

Running Serverless projects and functions locally with SAM Local requires Docker to be installed and running. SAM Local will use the `DOCKER_HOST` environment variable to contact the docker daemon.

 - macOS: [Docker for Mac](https://store.docker.com/editions/community/docker-ce-desktop-mac)
 - Windows: [Docker Toolbox](https://download.docker.com/win/stable/DockerToolbox.exe)
 - Linux: Check your distro’s package manager (e.g. yum install docker)




### AWS credential
Before deploying your code to AWS, you need to configure the credential use by aws client and Sam local.

https://docs.aws.amazon.com/fr_fr/cli/latest/userguide/cli-chap-getting-started.html



## Install Dépendency
npm install

## Test
start the node server
```bash
make dialogflow-api
```
Simulate a dialoflow call
```bash
make dialogflow-welcome
```
The command will simulate a call from dialogflow and display the result of the intent hello.world





## Deploy to AWS
Run the command:
```bash
make
make deploy
```
The commands will create/update the AWS Lambda code and publish a new API Gateway
