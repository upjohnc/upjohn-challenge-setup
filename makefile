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

my_psql:
> psql -p 5433 -h localhost -U amino_user -d amino -W

start_psql:
> docker compose -f docker-compose-psql.yml up

down_psql:
> docker compose -f docker-compose-psql.yml down
