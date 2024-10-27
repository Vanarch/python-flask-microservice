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
	docker build -t flask-api .
run:
	# run docker
	docker run -d -p 5000:5000 flask-api

deploy:
	# deploy the code

all: install format lint test build run
