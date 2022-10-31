.PHONY: clean install run lint test

PIP ?= pip
PROJECT_PATH ?= src
PY_CONFIG_PATH ?= setup.cfg

install: install-local install-test

install-local: .install-local
.install-local: requirements.txt
	$(PIP) install -r requirements.txt
	touch $@

install-test: .install-test
.install-test: requirements-test.txt
	$(PIP) install -r requirements-test.txt
	touch $@

run:
	PYTHONPATH="$(PROJECT_PATH)" python -m flask run --host=127.0.0.1

clean:
	rm -rf venv/

lint:
	PYTHONPATH="$(PROJECT_PATH)" python -m flake8 $(PROJECT_PATH) --config=$(PY_CONFIG_PATH)

test:
	PYTHONPATH="$(PROJECT_PATH)" python -m pytest $(TEST_ARGS)
