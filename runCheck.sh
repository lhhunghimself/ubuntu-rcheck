#!/usr/bin/bash
#command to check networkBMA
sudo docker run --rm -v ${PWD}:/local -w /local ubuntu-rcheck R CMD check networkBMA
#command to login and look at setup
#sudo docker run --rm -it -v ${PWD}:/local -w /local ubuntu-rcheck /bin/bash
