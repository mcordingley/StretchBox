#!/bin/bash

vagrant up;
vagrant reload;
vagrant ssh -c '/home/vagrant/install-guest-additions.sh';
vagrant halt;
vagrant package --base StretchBoxBuild --vagrantfile PackagedVagrantfile;
vagrant destroy -f;