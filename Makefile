ENV=env
FREEZE=freeze
PIP=$(ENV)/bin/pip
REQUIREMENTS=requirements.txt

## help
help: Makefile
				@sed -n 's/^## //p' $<
## env => create environment
$(ENV):
				virtualenv --python python3 $@
#				$(PIP) install -r $(REQUIREMENTS)
## freeze => update requirements
$(FREEZE):
				$(PIP) freeze > $(REQUIREMENTS)
