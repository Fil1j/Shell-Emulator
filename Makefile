PYTHON ?= python3

.PHONY: run test lint clean

run:
	$(PYTHON) src/shell_emulator.py

test:
	PYTHONPATH=src $(PYTHON) -m unittest discover -s tests -v

lint:
	$(PYTHON) -m pycodestyle src tests

clean:
	find . -name __pycache__ -type d -prune -exec rm -rf {} +
