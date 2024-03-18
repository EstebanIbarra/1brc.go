#!/bin/bash

# Give permissions to execute the githooks
chmod +x .githooks/*

# Copy the githooks to the .git/hooks folder
cp .githooks/* .git/hooks/
