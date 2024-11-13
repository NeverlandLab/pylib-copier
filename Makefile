push:
	git add . && codegpt commit . && git push

setup:
	virtualenv .venv -p python3.10
	./.venv/bin/pip install pip-tools

install:
	./.venv/bin/pip-compile ./requirements/requirements.in -v --output-file ./requirements.txt
	./.venv/bin/pip-sync -v
