#!/bin/bash

kill $(pgrep waybar)
nohup waybar & >/dev/null 2>&1

