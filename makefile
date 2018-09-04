.PHONY: tools

PHPRMT := $(shell command -v RMT 2> /dev/null)

tools:
ifndef PHPRMT
  $(error "php release management tool (rmt) is not available; try composer global require liip/rmt")
endif

	@echo Toolchain available

build: tools
	@echo Ta Da

release: tools
	composer update
	./RMT release
