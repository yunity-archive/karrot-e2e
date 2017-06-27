#!/bin/bash
set -eu

$(npm bin)/webdriver-manager update
$(npm bin)/webdriver-manager start
