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
	$(if $(shell composer global show | grep localheinz/composer-normalize; if [ $$? -eq 1 ] ; then exit 1 ; fi), , $(error Need to do: composer global install localheinz/composer-normalize))
	./RMT release
