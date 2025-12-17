#!/bin/bash

FLEET="thomas_demmer_pro/chicken-run-v2"

# Pass the latest changelog entry as note to the the balena push command
echo push $FLEET
balena push $FLEET