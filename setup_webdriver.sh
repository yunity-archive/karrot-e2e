#!/bin/sh
set -eu

$(npm bin)/webdriver-manager update
$(npm bin)/webdriver-manager start
