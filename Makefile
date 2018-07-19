IMAGE_NAME ?= amaysim/ecs-utils:$(VERSION)
VERSION := v$(shell python -c 'exec(open("src/cfnlint/version.py").read()); print(__version__)')

dockerBuild:
	docker build -t amaysim/cfn-python-lint:$(VERSION) .

# Tags are created upstream so this shouldn't really be needed
gitTag:
	git tag $(VERSION)
	git push origin $(VERSION)
