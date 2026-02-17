NAME = transcendance

all: build

build:
	cd transcendance && docker compose build

up:
	cd transcendance && docker compose up

down:
	cd transcendance && docker compose down

clean:
	cd transcendance && docker compose down -v

fclean: clean
	cd transcendance && docker compose down --rmi all -v

re: fclean all

.PHONY: all build up down clean fclean re
