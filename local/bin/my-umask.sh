#!/bin/bash

fd . /srv/filmy -t d -x chmod 755 {}
fd . /srv/hudba -t d -x chmod 755 {}
fd . /srv/filmy -t f -x chmod 644 {}
fd . /srv/hudba -t f -x chmod 644 {}

