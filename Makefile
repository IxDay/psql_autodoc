
AUTODOC_DIR=./autodoc

include $(AUTODOC_DIR)/Makefile

.PHONY: archive
archive: $(BINARY).tar.gz

$(BINARY).tar.gz:
	@tar -C $(AUTODOC_DIR) -cvzf $@ $(RELEASE_FILES)
