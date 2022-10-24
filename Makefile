.PHONY: clean install run

install:
	[ ! -d "venv/" ] && python3 -m venv venv/ || :
	venv/bin/pip install --no-cache-dir install -r requirements.txt

run:
	venv/bin/python3 -m flask run --host=127.0.0.1

clean:
	rm -rf venv/
