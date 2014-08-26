all: install

install:
	git config merge.ours.driver true

rebuild:
	git rm DELETE_ME_TO_FORCE_REBUILD; git commit -m "force rebuild"
