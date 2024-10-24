install:
	# install commands
	pip install --upgrade pip && pip install -r requirements.txt

format:
	# format code
	black *.py

lint:
	# linting with pylint
	pylint --disable=R,C *.py

test:
	# test the code
	python -m pytest -v tests/
build:
	# build container

deploy:
	# deploy the code

all: install format lint test deploy

