#!/bin/bash

# Run the reset scripts for each database in parallel
bash dbs/pagila/reset.sh &
bash dbs/chinook/reset.sh &
bash dbs/lego/reset.sh &
bash dbs/imdb/reset.sh &

wait