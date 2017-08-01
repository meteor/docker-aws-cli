# docker-aws-cli
A simple docker that allows you to pass through aws-cli commands

### Example usage

```
docker pull meteor/aws-cli
docker run -v ${HOME}/.aws/:/aws meteor/aws-cli sts get-caller-identity
```

Basically, `aws` becomes `docker run -v ${HOME}/.aws/credentials:/root/.aws/credentials meteor/aws-cli aws`.
