FROM ubuntu:latest

MAINTAINER Connor Lanigan <dev@connorlanigan.com>

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

CMD git clone https://github.com/EpicGames/UnrealEngine.git && \
	cd UnrealEngine && \
	./Setup.sh && \
	./GenerateProjectFiles.sh && \
	make
