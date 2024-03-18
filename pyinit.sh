#!/bin/bash

# add plugin
# asdf plugin-add python
asdf plugin-add poetry


# asdf list-all python

echo "python 3.9.17" > ./.tool-versions
echo "poetry 1.5.1" >> ./.tool-versions

asdf install

# check version
# python --version
# poetry --version

poetry init

# pypoject.tomlファイルで、python = の行を探してpython="3.11.7"に書き換える
sed -i -e 's/^python = .*/python = "3.9.17"/' pyproject.toml

poetry config virtualenvs.in-project true --local
poetry env use $(which pytthon)

poetry run python --version

poetry add pydantic
poetry add --group dev black
poetry add --group dev ruff
poetry add --group dev mypy
poetry add --group dev pytest@7.4.0

mkdir src
