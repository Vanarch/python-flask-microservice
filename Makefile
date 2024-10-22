install:
	# install commands
	pip install --upgrade pip && pip install -r requirements.txt

format:
	# format code

lint:
	# linting with pylint

test:
	# test the code

deploy:
	# deploy the code

all: install format lint test deploy

