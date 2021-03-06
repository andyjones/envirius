#!/usr/bin/env bats

load test_helper

@test "plugin: haskell" {
    run nv mk --haskell=7.8.1
    assert_success

    nv on haskell-7.8.1

    run ghc --version
    assert_success "The Glorious Glasgow Haskell Compilation System, version 7.8.1"
}
