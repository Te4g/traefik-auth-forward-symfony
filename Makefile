start: ## Start
	docker-compose up -d
	docker run --rm --interactive --tty --volume $(PWD)/symfony:/app composer install
	docker-compose exec php bin/console doctrine:database:create
	docker-compose exec php bin/console doctrine:migrations:migrate --no-interaction

stop: ## Stop
	docker-compose stop

remove: ## Remove containers
	docker-compose rm -fs

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
