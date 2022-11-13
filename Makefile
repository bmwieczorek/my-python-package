inf:
	python3 -V
	pip3 -V
	pip3 show my-python-package

uninstall:
	pip3 uninstall -y my-python-package

clean:
	rm -rf target

test:
	#python3 -m pytest tests/ -o log_cli=true -v --junit-xml=target/TEST-results.xml
	python3 -m pytest tests/

package: uninstall clean test
	mkdir -p target
	cp -r my_python_package setup.py readme.txt target/
	cd target && python3 setup.py sdist bdist_wheel

install: package
	$(eval WHEEL = $(shell ls target/dist/*.whl))
	@echo "Build $(WHEEL)"
	pip3 install $(WHEEL)
