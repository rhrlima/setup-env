all: brew brew.apps omp.config

brew:
	sh scripts/brew.sh
	echo "---"

brew.apps:
	sh scripts/brew-apps.sh
	echo "---"

omp.config:
	sh config/oh-my-posh.sh
	echo "---"
