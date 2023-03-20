VYOS_MODULAR_USER ?= ramblurr
VYOS_MODULAR_BRANCH ?= dev

venv:
	python3 -m venv venv

vyos-modular: venv
	git clone -b ${VYOS_MODULAR_BRANCH} --single-branch "https://github.com/${VYOS_MODULAR_USER}/vyos-modular"
	. venv/bin/activate && pip install -r vyos-modular/requirements.txt

.PHONY: build
build: vyos-modular
	. venv/bin/activate && python3 vyos-modular/main.py -c config.yml

.PHONY: clean
clean:
	sudo rm -rf vyos-modular build/ vendor/ bin/
