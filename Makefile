up:
	docker compose up
down:
	docker compose down
build:
	docker compose up --build
ps:
	docker compose ps
create:
	docker compose exec web rails db:create
migrate:
	docker compose exec web rails db:migrate
console:
	docker compose exec web rails console
