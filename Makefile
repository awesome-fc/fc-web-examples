.PHONY: clean prepare build package

dist := ./.dist

clean:
	rm -rf $(dist)

prepare:
	mkdir -p $(dist)

nextjs_build:
	cd nextjs && \
		yarn install && \
		npm run build

nextjs_package: prepare
	cd nextjs && \
		zip -q -y -r $(realpath $(dist))/nextjs.zip .

nuxtjs_build:
	cd nuxtjs && \
		yarn install && \
		npm run build

nuxtjs_package: prepare
	cd nuxtjs && \
		zip -q -y -r $(realpath $(dist))/nuxtjs.zip .

expressjs_build:
	cd expressjs && \
		npm i 

expressjs_package: prepare
	cd expressjs && \
		zip -q -y -r $(realpath $(dist))/expressjs.zip .
	
koa_build:
	cd koa && \
		npm i 

koa_package: prepare
	cd koa && \
		zip -q -y -r $(realpath $(dist))/koa.zip .

eggjs_build:
	cd eggjs && \
		npm i && \
		npm start && \
		npm stop

eggjs_package: prepare
	cd eggjs && \
		zip -q -y -r $(realpath $(dist))/eggjs.zip .

springboot_build:
	cd springboot && \
		mvn package

springboot_package: prepare
	cp springboot/target/demo-*.jar $(realpath $(dist))/springboot.jar

war_build:
	cd war && \
		mvn package

war_package: prepare
	cp war/target/javawebapp.war $(realpath $(dist))/javawebapp.war

beego_build:
	cd beego && \
		GOPROXY=https://goproxy.io GOARCH=amd64 GOOS=linux go build

beego_package: prepare
	cd beego && \
		zip -q -y -r $(realpath $(dist))/beego.zip .

gin_build:
	cd gin && \
		GOPROXY=https://goproxy.io GOARCH=amd64 GOOS=linux go build

gin_package: prepare
	cd gin && \
		zip -q -y -r $(realpath $(dist))/gin.zip .

thinkphp_build:
	cd thinkphp && \
		composer install

thinkphp_package: prepare
	cd thinkphp && \
		zip -q -y -r $(realpath $(dist))/thinkphp.zip .

laravel_build:
	cd laravel && \
		composer install && \
		php artisan key:generate

laravel_package: prepare
	cd laravel && \
		zip -q -y -r $(realpath $(dist))/laravel.zip .

django_package: prepare
	cd django && \
		zip -q -y -r $(realpath $(dist))/django.zip .

build: nextjs_build nuxtjs_build expressjs_build eggjs_build beego_build gin_build springboot_build thinkphp_build laravel_build war_build koa_build

package: clean nextjs_package nuxtjs_package expressjs_package eggjs_package beego_package gin_package springboot_package thinkphp_package laravel_package war_package koa_package

publish:
	./publish.sh