#!/bin/bash

dc_fname=`hostname`
docker-compose -f $dc_fname up -d 
