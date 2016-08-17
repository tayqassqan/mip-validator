.PHONY: clean valid invalid

valid: 
	node bin/cli.js -f examples/conf.json < examples/valid.html

invalid: 
	node bin/cli.js -f examples/conf.json < examples/invalid.html

examples/valid.html.json: examples/valid.html examples/conf.json
	node bin/cli.js -f examples/conf.json < examples/valid.html > examples/valid.html.json

examples/invalid.html.json: examples/invalid.html examples/conf.json
	node bin/cli.js -f examples/conf.json < examples/invalid.html > examples/invalid.html.json

clean:
	rm examples/*.html.json
