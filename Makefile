PD=pandoc
PDFLAGS=--self-contained
TARGETS=soop-article.html
TARGET_DIR=doc

all: $(TARGET_DIR) $(TARGETS)

$(TARGET_DIR):
	mkdir -p $(TARGET_DIR)

VPATH = src:text/en
$(TARGETS): %.html: %.markdown
	$(PD) $(PDFLAGS) -o $(TARGET_DIR)/$@ $< 

clean:
	rm -r $(TARGET_DIR)
