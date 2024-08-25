mac: mac.brew mac.apps mac.config
	
mac.brew:
	sh scripts/brew.sh
	@echo "----------"

mac.apps:
	sh scripts/brew-apps.sh
	@echo "----------"

mac.config:
	sh config/aliases.sh
	sh config/oh-my-posh.sh
	@echo "----------"
