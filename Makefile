.PHONY: build

## You can use this along to run custom build steps instead of the default `sam build` does.
## https://docs.aws.amazon.com/lambda/latest/dg/runtimes-custom.html
#build-GohamaFunction:
#	...
#	...

build:
	sam build

invoke: build
	sam local invoke --event event.json

## TODO: Need to do something with the last arg for this to work.
#debug: invoke
#	sam local invoke --event event.json --debug --debugger-path ....


validate:
	sam validate

api: build
	sam local start-api


