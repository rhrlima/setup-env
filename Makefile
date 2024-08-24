mac: mac.brew mac.apps mac.omp.config
	
mac.brew:
	sh scripts/brew.sh
	@echo "----------"

mac.apps:
	sh scripts/brew-apps.sh
	@echo "----------"

mac.omp.config:
	sh config/oh-my-posh.sh
	@echo "----------"
