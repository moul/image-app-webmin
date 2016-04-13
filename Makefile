DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-webmin
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Webmin
DESCRIPTION =		Webmin
SOURCE_URL =		https://github.com/scaleway/image-app-webmin


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
