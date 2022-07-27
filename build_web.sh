RUSTFLAGS=--cfg=web_sys_unstable_apis cargo build --target wasm32-unknown-unknown --release --features wasm &&
wasm-bindgen ../target/wasm32-unknown-unknown/release/times_square_superconductor.wasm --out-dir web/pkg --target web &&
cd web &&
sh host_files.sh