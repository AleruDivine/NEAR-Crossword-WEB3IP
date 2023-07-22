#!/bin/bash
set -e

RUSTFLAGS='-C link-arg=-s' cargo build --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/crossword_tutorial_chapter_1.wasm ./res/
near dev-deploy ./res/crossword_tutorial_chapter_1.wasm new '{"solution":"69c2feb084439956193f4c21936025f14a5a5a78979d67ae34762e18a7206a0f"}'

