#!/usr/bin/env bats

function compile_and_run() {
  local asm_file="$1"
  ./asm/asm.py "./tests/${asm_file}" > ./memory.list
  make clean
  make run
}

@test "test I/O" {
  compile_and_run io_test.asm | grep 'REGISTERS: A: ff, B: xx, C: xx, D: xx, E: xx, F: xx, G: xx, Temp: xx'
}

@test "test call" {
  compile_and_run call_test.asm | grep 'Output:  42'
}

@test "test multiplication" {
  compile_and_run multiplication_test.asm | grep 'Output:  16'
}

@test "test mov" {
  compile_and_run mov_test.asm | awk '/Output:/ { print $2; }' | tr '\n' ' ' | grep '42 21'
}