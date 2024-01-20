DB_ACTION_NAMES = create migrate rollback
dbActions: $(addprefix db_, $(DB_ACTION_NAMES))

CONTROLLER_ACTION_NAMES = generate destroy
controllerActions: $(addprefix controller_, $(CONTROLLER_ACTION_NAMES))

up:
	docker compose up
down:
	docker compose down
build:
	docker compose up --build
ps:
	docker compose ps
db_%:
	docker compose exec web rails db:${@:db_%=%}
console:
	docker compose exec web rails console
credentials_edit:
	docker compose exec web rails credentials:edit
web:
	docker compose exec web bash
controller_%:
	docker compose exec web rails ${@:controller_%=%} controller $(CONTROLLER_NAME)
test:
	docker compose exec web rails test

.PHONY: dbActions db_% controllerActions controller_% test
