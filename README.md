# Puppet-lint Docker image

Run [puppet-lint](http://puppet-lint.com/) inside [Docker](https://www.docker.com/).

## Docker Hub

[https://hub.docker.com/r/claranet/puppet-lint/](https://hub.docker.com/r/claranet/puppet-lint/)

## Usage

Run the following in your puppet directory, adding arguments as required to the end of the command.

```shell
docker run --rm -v "$PWD:/puppet" claranet/puppet-lint
```

The following alias lets you run `puppet-lint` as normal.

```shell
alias puppet-lint='docker run --rm -v "$PWD:/puppet" claranet/puppet-lint'
```
