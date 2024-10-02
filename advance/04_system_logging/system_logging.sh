#!/bin/bash

echo "Ini adalah custom logger" > /var/log/customlog
logger -f /var/log/customlog