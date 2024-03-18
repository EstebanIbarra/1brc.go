#!/bin/bash

# Give permissions to execute the githooks
chmod +x .githooks/*

# Copy the githooks to the .git/hooks folder
cp .githooks/* .git/hooks/

# Install the dependencies
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.56.2
