#!/bin/bash

if setxkbmap -print | grep "ru"
then
    setxkbmap pl
else
    setxkbmap ru
fi

