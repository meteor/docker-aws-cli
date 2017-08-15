# docker-aws-cli
A simple docker that allows you to pass through aws-cli commands

Published to [meteor/aws-cli](https://hub.docker.com/r/meteor/aws-cli/tags/)

### Example usage

```
docker pull meteor/aws-cli
docker run -v ${HOME}/.aws/:/aws:ro meteor/aws-cli sts get-caller-identity
```

Basically, `aws` becomes `docker run -v ${HOME}/.aws/credentials:/aws/credentials:ro meteor/aws-cli`.
