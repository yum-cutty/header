.PHONY: java html python

RAW_BASE := https://raw.githubusercontent.com/yum-cutty/header/main
ARGS      := $(wordlist 2, 99, $(MAKECMDGOALS))

ifeq ($(OS),Windows_NT)
    ifndef MSYSTEM
        WINDOWS_NATIVE := 1
    endif
endif

# ─────────────────────────────────────────────────────────────────
# double-slash
# ─────────────────────────────────────────────────────────────────

java:
ifdef WINDOWS_NATIVE
	@curl -fsSL --create-dirs -o "$(TEMP)\hdr\Lib\helpers.bat"      $(RAW_BASE)/Lib/helpers.bat
	@curl -fsSL --create-dirs -o "$(TEMP)\hdr\src\double_slash.bat" $(RAW_BASE)/src/double_slash.bat
	@"$(TEMP)\hdr\src\double_slash.bat" $(ARGS)
else
	@tmpdir=$$(mktemp -d) && \
	 curl -fsSL --create-dirs -o "$$tmpdir/Lib/helpers.sh"      $(RAW_BASE)/Lib/helpers.sh && \
	 curl -fsSL --create-dirs -o "$$tmpdir/src/double_slash.sh" $(RAW_BASE)/src/double_slash.sh && \
	 chmod +x "$$tmpdir/src/double_slash.sh" && \
	 "$$tmpdir/src/double_slash.sh" $(ARGS)
endif

# ─────────────────────────────────────────────────────────────────
# SGML
# ─────────────────────────────────────────────────────────────────

html:
ifdef WINDOWS_NATIVE
	@curl -fsSL --create-dirs -o "$(TEMP)\hdr\Lib\helpers.bat" $(RAW_BASE)/Lib/helpers.bat
	@curl -fsSL --create-dirs -o "$(TEMP)\hdr\src\SGML.bat"    $(RAW_BASE)/src/SGML.bat
	@"$(TEMP)\hdr\src\SGML.bat" $(ARGS)
else
	@tmpdir=$$(mktemp -d) && \
	 curl -fsSL --create-dirs -o "$$tmpdir/Lib/helpers.sh" $(RAW_BASE)/Lib/helpers.sh && \
	 curl -fsSL --create-dirs -o "$$tmpdir/src/SGML.sh"    $(RAW_BASE)/src/SGML.sh && \
	 chmod +x "$$tmpdir/src/SGML.sh" && \
	 "$$tmpdir/src/SGML.sh" $(ARGS)
endif

# ─────────────────────────────────────────────────────────────────
# hashtag
# ─────────────────────────────────────────────────────────────────

python:
ifdef WINDOWS_NATIVE
	@curl -fsSL --create-dirs -o "$(TEMP)\hdr\Lib\helpers.bat"  $(RAW_BASE)/Lib/helpers.bat
	@curl -fsSL --create-dirs -o "$(TEMP)\hdr\src\hashtag.bat"  $(RAW_BASE)/src/hashtag.bat
	@"$(TEMP)\hdr\src\hashtag.bat" $(ARGS)
else
	@tmpdir=$$(mktemp -d) && \
	 curl -fsSL --create-dirs -o "$$tmpdir/Lib/helpers.sh"  $(RAW_BASE)/Lib/helpers.sh && \
	 curl -fsSL --create-dirs -o "$$tmpdir/src/hashtag.sh"  $(RAW_BASE)/src/hashtag.sh && \
	 chmod +x "$$tmpdir/src/hashtag.sh" && \
	 "$$tmpdir/src/hashtag.sh" $(ARGS)
endif

%:
	@: