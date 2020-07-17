.DEFAULT_GOAL := help
.PHONY: help
IMAGE_NAME := etebar-iac

help:  ## List out all commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

login:  ## Login to Azure CLI by using the service principal
	@az login --service-principal -u $(CLIENT_ID) -p $(CLIENT_SECRET) --tenant $(TENANT_ID)

build:  ## Build the Docker Image
	@docker-compose build

format:  ## Format all .tf files
	@terraform fmt

plan: format  ## Create an executable plan in a Docker container (requires environment variables to be set)
	@docker-compose run etebariac bin/plan

apply: ## Run the executable plan in a Docker container (requires environment variables to be set)
	@docker-compose run etebariac bin/apply

up: build plan apply ## Create and run the executable plan in a Docker container (requires environment variables to be set)

destroy:  ## Destroy all resources in the ENVIRONMENT specified. There will a prompt to confirm destroy.
	@docker-compose run etebariac bin/destroy
