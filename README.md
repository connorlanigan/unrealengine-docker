# Compiling Unreal Engine for Linux inside a Docker container

The Linux version of the Unreal Engine is currently only available as source code (so there are no published binaries). You need to compile it on your machine, but it can be a pain to clean up all the build-related stuff afterwards.

This project allows you to compile Unreal Engine on your local Linux machine without leaving all the build dependencies on your disk. The source is automatically downloaded and compiled in the `output/` directory.

It follows the steps listed in [https://wiki.unrealengine.com/Building_On_Linux].


## How to use it

You need to have `docker` and `bash` installed.
Then, run `compile.sh`.



## What this project DOES

* download the Unreal Engine source code
* install all needed dependencies
* compile the engine (including the editor and other binaries)
* delete the container afterwards


## What this project DOESN'T

* get you authentication to the source code repository
* clean up the source code or intermediate compilation files
* delete the image from your machine

You need to get access to the source code repository yourself. Usually, this can be achieved by getting an _Epic Games_ account and adding your Github username to your _Epic Games_ user profile. If you are using 2FA with Github, you need to create a [personal access token](https://github.com/settings/tokens) and use it in place of your password.

After compilation, you will have lots of intermediate files in the `output/` directory. You need to decide for yourself which ones you want to keep and which ones you want to delete. The editor is run by executing `output/UnrealEngine/Engine/Binaries/Linux/UE4Editor`.

If you are done with compiling, the docker image will still be stored on your machine. You can delete it by running `docker rmi connorlanigan/unrealengine && docker image prune`.
