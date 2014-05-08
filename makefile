TYPE=desktop

# Init.

PENTADACTYL_PATH=${HOME}/.pentadactyl/


.PHONY: install update remove 

all: install

install: ${PENTADACTYL_PATH}
	@echo '=> Install start.'
	cp -r colors/ ${PENTADACTYL_PATH}
	echo 'colorscheme fu' >> ../.pentadactylrc
	@echo '=> Done.'
	@echo ''

update:
	@echo '=> Updating start.'
	# - Bash.
	rsync -aqz colors/* ${PENTADACTYL_PATH}/colors/
	@echo '=> Done.'
	@echo ''

remove:
	@echo '=> Remove start.'
	rm -rf ${PENTADACTYL_PATH}
	@echo '=> Done.'
	@echo ''

