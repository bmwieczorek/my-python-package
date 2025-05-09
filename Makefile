# for pyenv
#PATH := ~/.pyenv/versions/3.8.14/envs/airflow-1.10.15-python-3.8.14/bin:$(PATH)
#SHELL := env PATH=$(PATH) /bin/bash

inf:
	python3 -V
	pip3 -V
	pip3 show my-package

uninstall:
	pip3 uninstall -y my-package

clean:
	rm -rf target

test:
	#python3 -m pytest tests/ -o log_cli=true -v --junit-xml=target/TEST-results.xml
	python3 -m pytest tests/

package: uninstall clean test
	mkdir -p target
	cp -r my_package setup.py readme.txt target/
	cd target && python3 -m pip install --upgrade pip setuptools wheel && python3 setup.py sdist bdist_wheel

install: package
	$(eval WHL_FILE = $(shell ls target/dist/*.whl))
	@echo "Building $(WHL_FILE)"
	pip3 install $(WHL_FILE)
