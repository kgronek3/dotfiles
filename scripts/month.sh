#!/bin/bash
echo 'Dziś jest: $(date +%Y/%m/%d)'
echo $(remind -n ~/.config/remind/all.rem | grep $(date +%Y/%m) | sort)
