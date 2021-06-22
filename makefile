SHELL := bash
.ONESHELL:
.RECIPEPREFIX = >

test:
> poetry run pytest

test-watch:
> find . -type f -name "*.py" | entr poetry run pytest -v

isort:
> isort .

run:
> docker compose run amino && docker compose down

mypy:
> mypy $(root_dir)
