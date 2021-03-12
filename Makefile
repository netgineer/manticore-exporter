# Copyright 2015 The Prometheus Authors
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VERSION := 0.0.1
LDFLAGS := -X main.Version=$(VERSION)
GOFLAGS := -ldflags "$(LDFLAGS) -s -w"
GOARCH ?= $(subst x86_64,amd64,$(patsubst i%86,386,$(shell uname -m)))


all: clean build

deps:
	@go get -u github.com/golang/dep/cmd/dep
	@dep ensure
build:
	@mkdir -p ./dist
	@export CGO_ENABLED=0; export GOOS=linux; go build $(GOFLAGS) -o ./dist/sphinx_exporter.linux-${GOARCH}
	@export CGO_ENABLED=0; export GOOS=darwin; go build $(GOFLAGS) -o ./dist/sphinx_exporter.darwin-${GOARCH}

clean:
	@rm -rf ./dist

.PHONY: all deps build clean
