default: clone_repo run_make copy_output delete_source run_build

clone_repo:
	rm -rf libpg_query_source
	git clone -b 10-latest git://github.com/lfittl/libpg_query libpg_query_source

run_make:
	make --directory libpg_query_source

copy_output:
	cp -i libpg_query_source/pg_query.h libpg_query/include/pg_query.h
	cp -i libpg_query_source/libpg_query.a libpg_query/linux/libpg_query.a

delete_source:
	rm -rf libpg_query_source

run_build:
	npm run build