local:
	mkdir -p tmp
	npx antora --version
	npx antora --stacktrace --log-format=pretty \
		lh-local-playbook.yml \
		2>&1 | tee tmp/local-build.log 2>&1

remote:
	mkdir -p tmp
	npm install && npm update
	npx antora --version
	npx antora --stacktrace --log-format=pretty \
		lh-remote-playbook.yml \
		2>&1 | tee tmp/remote-build.log 2>&1

clean:
	rm -rf build

environment:
	npm install && npm update

after_clone:
	bin/after_clone