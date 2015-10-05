#!/bin/bash
# Copyright (c) 2015, Peter Mrekaj. All rights reserved.
# Use of this source code is governed by a MIT-style
# license that can be found in the LICENSE.txt file.

# This script helps gathering and send (to Covaralls) test coverage across
# multiple Golang packages listed in the same directory as this script is located.

go get github.com/axw/gocov/gocov
go get github.com/mattn/goveralls
go get golang.org/x/tools/cmd/cover


go test -coverprofile=profile.out

$HOME/gopath/bin/goveralls -service=travis-ci -coverprofile=profile.out

exit 0
