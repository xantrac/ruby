#!/bin/bash

set -e
set -x

clang -std=gnu99 -Wall -Werror -Wno-error=unused-function -Wshorten-64-to-32 yjit_asm_tests.c -o asm_test

./asm_test

rm asm_test
