# Issue-4553
See https://github.com/pypa/pipenv/issues/4553 for main discussion.

Pipenv 2020 onwards is unable to lock the dependencies when two local
packages depend between them. In this example, the local `foo` package
depends on the `nonexistent` local package. pipenv 2018.11.26 is the
latest version that can lock this project so far.

## Reproduction

Just run

```
pipenv lock
```

in this repository to see if your pipenv
installation is affected by issue-4553.

For easier isolation, a convenience Dockerfile is
provided to test public pipenv releases with

```
docker build . [--build-arg _PIPENV=2018.11.26]
```