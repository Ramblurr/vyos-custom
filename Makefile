vyos-modular:
	git clone -b main --single-branch https://github.com/jack-broadway/vyos-modular
	. venv/bin/activate && pip install -r vyos-modular/requirements.txt

.PHONY: build
build: vyos-modular
	. venv/bin/activate && python3 vyos-modular/main.py -c config.yml

.PHONY: clean
clean:
	sudo rm -rf vyos-modular build/ vendor/
