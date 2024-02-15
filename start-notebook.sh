#!/bin/bash
exec jupyter lab --allow-root --ip 0.0.0.0 $@ &> /var/log/jupyter.log 

