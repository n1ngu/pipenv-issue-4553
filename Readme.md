See https://github.com/pypa/pipenv/issues/4553 for main discussion.

Pipenv 2020 onwards is unable to lock the dependencies when two local
packages depend between them. In this example, the local `foo` package
depends on the `nonexistent` local package. pipenv 2018.11.26 is the
latest version that can lock this project so far.
