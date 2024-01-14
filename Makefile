all: setup install test lint

workingDirectory:
	$(projectRoot=/home/odluser/projectRepo/myDevOpsDemoRepo/)

setup:
	python3 -m venv ~/home/odl_user/proj/.myDevOpsDemoRepo &&\
		source ~/home/odl_user/proj/.myDevOpsDemoRepo/bin/activate &&\
		make install

install:
	python3 -m pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
		python3 -m pip install pyinotify pytest virtualenv &&\
		virtualenv ~/home/odl_user/.local/.azureDevOps &&\
		source ~/home/odl_user/.local/.azureDevOps/bin/activate &&\
		which python3
test:
	python3 -m pytest -vv test_hello.py

lint:
	python3 -m pylint --disable=R,C hello.py
