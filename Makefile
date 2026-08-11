PLENARY_DIR := $(HOME)/.local/share/nvim/site/pack/vendor/start/plenary.nvim

.PHONY: test test-file deps clean-deps

test: deps
	nvim --headless --noplugin -u tests/minimal_init.lua \
		-c "PlenaryBustedDirectory tests/ { minimal_init = 'tests/minimal_init.lua' }"

test-file: deps
	nvim --headless --noplugin -u tests/minimal_init.lua \
		-c "PlenaryBustedFile $(FILE)"

deps: $(PLENARY_DIR)

$(PLENARY_DIR):
	git clone --depth=1 https://github.com/nvim-lua/plenary.nvim $@

clean-deps:
	rm -rf $(PLENARY_DIR)
