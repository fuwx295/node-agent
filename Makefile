.PHOHY: clean
clean:
	rm -rf dist

.PHONY: build
build: clean
	mkdir -p dist
	go build -o dist/node-agent

.PHOHY: package
package: build
	tar -czf dist/node-agent.tar.gz dist/node-agent