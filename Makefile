up:
	docker compose up
down:
	docker compose down
build:
	docker compose up --build
ps:
	docker compose ps
db_create:
	docker compose exec web rails db:create
db_migrate:
	docker compose exec web rails db:migrate
console:
	docker compose exec web rails console
credentials_edit:
	docker compose exec web rails credentials:edit
web:
	docker compose exec web bash
