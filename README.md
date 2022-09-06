# Print Back End

## Prerequisites

- Install python3
- Install docker
- Install docker-compose

## Installation

- `$ sh scripts/docker_init.sh` => To create postgres directory and build docker container
- change 'sample.env' to '.env' (optional change values)
- `$ docker-compose up` => To compose up docker containers
- `$ sh scripts/enter-container.sh` => To enter docker web container
  - `$ sh scripts/initial_db_setup.sh` => To set up docker for the first time
    OR (if the command above does not work)
  - `$ python3 manage.py createsuperuser` => To create a super user
    - username: admin
    - email: admin@example.com
    - password: djangoadmin1
- `$ exit` => To leave container
- `$ python3 -m venv venv` => To create a virtualenv
- `$ source venv/bin/activate` => To activate virtualenv
- `$ pip install -r requirements.txt` => To install dependencies
- `$ pre-commit install` => To install git hooks

## Getting Started

### Workflow

#### Create New App

- `$ cd config`
- `$ python3 manage.py startapp <app_name>` => To create a new app
- create `urls.py` file and add routes
- create models in `models.py`
- create a `serializers.py` file and add serializers there
- add views to `views.py`
- register models in `admin.py`
- write your tests in `tests.py`
- include your app urls in `config/urls.py`

## Info Commands

`$ python3 manage.py show_urls` => To show all existing urls (See https://github.com/django-extensions/django-extensions for more commands)

## Conventional Commits

- This project uses [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/)
- ex: `$ git commit -a -m"<type>[optional scope]: <description>"`
- `feat`: introduces a new feature to the codebase (this correlates with a MINORin SemVer es: 2.0.0 -> 2.1.0).
- `fix`: a bugfix in your codebase (this correlates with a PATCH in semVer es: 2.0.0 -> 2.0.1).
- `BREAKING CHANGE`: is a total change of your code, this is also can be used with a previous tag like BREAKING CHANGE: feat: <description> (this correlates with a MAJOR in SemVer es: 2.0.0 -> 3.0.0).
- `docs`: a change in the README or documentation
  refactor: a change in production code focused on upgrade code readability and style
- Try out the conventional commits vscode extension

## Changelog

- [python-semantic-release](https://python-semantic-release.readthedocs.io/en/latest/)
- `$ semantic-release publish --<patch|minor|major|prerelease|prerelease-patch>`
  - Updates CHANGELOG.md from conventional commits
  - Increments version number in setup.py

## Testing

- `$ python3 manage.py test` => To run tests

## Helpful Links

- [Creating a Docker Django app](https://docs.docker.com/samples/django/)
- [Django docs](https://docs.djangoproject.com/en/4.1/)
- [Django settings configuration](https://docs.djangoproject.com/en/3.2/ref/settings/#databases)
