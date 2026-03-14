#!/bin/sh

R -e "shiny::runApp('/srv/shiny-server', host='0.0.0.0', port=$APP_PORT)"