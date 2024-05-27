#!/bin/bash

ls -d */ | xargs -I {} bash -c "cd '{}' && git pull"
