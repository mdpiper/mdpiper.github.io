MD_SOURCES= \
  content.md
DOCS= \
  ${MD_SOURCES:.md=.html}

.SUFFIXES : .md .html

.md.html:
	pandoc --to=html $< -o $@

all: ${DOCS}

show:
	python -m http.server &
	open http://[::]:8000/

clean:
	rm -f ${DOCS}
