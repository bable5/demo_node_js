DOCKER=docker
NPM=npm
HOST_PORT=9020
CONTAINTER_PORT=8080

run: package
	$(DOCKER) run --rm -d -p $(HOST_PORT):$(CONTAINTER_PORT) bable5/demo_node_js:latest

run-prod:
	./run_prod_server

package:
	$(DOCKER) build -t bable5/demo_node_js:latest .
