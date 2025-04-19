# flutter-docker-compiler
A script that compiles your Flutter project for Linux using Docker.

## Objective:
Compile a Flutter project for Linux with better compatibility across different Linux distributions, avoiding errors such as "GLIBC_2.34 not found".

## How?
The project is compiled through Docker, using the oldest Debian image compatible with Flutter.

## Requirements:
1. Linux environment (to run the script)
2. Docker installed

## How to use:
Clone this repository into the root of your Flutter project.
Open the terminal at the root of your project and execute the following commands:
1. `cd flutter-docker-compiler`
2. `sudo su` (enter your password)
3. `chmod +x build-linux.sh`
4. `./build-linux.sh`

The project will be built in the `flutter-docker-compiler/build folder`, and the symbols will be saved in the `flutter-docker-compiler/debug` folder.
The flutter-linux image will be made available so that it doesn’t need to be recreated every time, reducing the build time in future executions.
If you make any modifications to your project, simply run `./build-linux.sh` again.

## Tip:
Add `/flutter-docker-compiler` to your .gitignore file.