#!/bin/sh
set -e
cd "$(dirname "$0")/.."
g++ -std=c++17 -Wall -pthread -Isrc -o /tmp/ss_reverb tests/reverb_test.cpp && /tmp/ss_reverb
g++ -std=c++17 -Wall -pthread -Isrc -o /tmp/ss_fx tests/fx_test.cpp && /tmp/ss_fx

# Studio 87 Gear Updater link (product id and link string)
(cd "$(dirname "$0")/.." && g++ -std=c++17 -O2 -Wall -Wextra -o /tmp/s87_link_test tests/test_updater_link.cpp && /tmp/s87_link_test) || exit 1
