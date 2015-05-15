INSTALL_DIR=~/.config/fish

all:
	@echo "Please run 'make install'"

install:
	@echo ""
	mkdir -p $(INSTALL_DIR)/functions
	cp functions/*.fish $(INSTALL_DIR)/functions/
	@echo ""
	@echo ''
	@echo 'USAGE:'
	@echo '------'
	@echo 'idid fish: CLI re-implementation of idonethis.com'
	@echo '           using fish (http://fishshell.com)'
	@echo 'idid \"this\"    - save an item with today\'s date'
	@echo 'idid -y \"this\" - save an item with yesterday\'s date'
	@echo 'idid -t        - list all tags'
	@echo 'idid -t tag    - list all items with given \'tag\''
