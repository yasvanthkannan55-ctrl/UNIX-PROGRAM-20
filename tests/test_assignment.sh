#!/usr/bin/env bash

set -eu

SCRIPT="starter.sh"
PASS=0
FAIL=0

if [[ ! -f "$SCRIPT" ]]; then
    echo "FAIL: starter.sh not found"
    exit 1
fi

check() {
    local description="$1"
    local pattern="$2"

    if grep -Eq "$pattern" "$SCRIPT"; then
        echo "PASS: $description"
        PASS=$((PASS + 1))
    else
        echo "FAIL: $description"
        FAIL=$((FAIL + 1))
    fi
}

echo "Running IP assignment test cases..."
echo

check "Connection profile variable is declared" \
    'CONNECTION_NAME='

check "IPv4 address variable is declared" \
    'IP_ADDRESS='

check "Gateway variable is declared" \
    'GATEWAY='

check "DNS server variable is declared" \
    'DNS_SERVER='

check "Connection status is checked using nmcli" \
    'nmcli[[:space:]]+.*(connection[[:space:]]+show|device[[:space:]]+status)'

check "Static IPv4 method is configured" \
    'ipv4\.method[[:space:]]+manual'

check "IPv4 address is configured" \
    'ipv4\.addresses'

check "IPv4 gateway is configured" \
    'ipv4\.gateway'

check "DNS server is configured" \
    'ipv4\.dns'

check "Connection is activated using nmcli" \
    'nmcli[[:space:]]+connection[[:space:]]+up'

check "IP configuration is verified" \
    'nmcli[[:space:]]+.*(device[[:space:]]+show|connection[[:space:]]+show)'

check "Completion message is present" \
    'IP assignment and verification completed'

echo
echo "------------------------------"
echo "Passed: $PASS"
echo "Failed: $FAIL"
echo "Total:  $((PASS + FAIL))"
echo "------------------------------"

if [[ "$FAIL" -gt 0 ]]; then
    exit 1
fi
