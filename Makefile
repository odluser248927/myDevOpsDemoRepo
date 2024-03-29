all: install test lint

install:
	python -m pip install --upgrade pip &&\
                pip install -r requirements.txt &&\
                python3 -m pip install pyinotify pytest
		which python3
test:
	python3 -m pytest -vv test_hello.py

lint:
	python3 -m pylint --disable=R,C hello.py
