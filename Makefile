# Makefile
# https://news.ycombinator.com/item?id=35328220
BACKEND_DIR := policyah/
UI_DIR := ui/

.PHONY: setup
setup:
	curl -sSL https://install.python-poetry.org | python3 -
	poetry install

.PHONY: lint
lint:
	black .
	ruff check ${BACKEND_DIR} --fix


.PHONY: build
build:
	poetry install

test:
	poetry run pytest


.PHONY: run-ui-dev
run-ui-dev:
	npm run --prefix ${UI_DIR} dev