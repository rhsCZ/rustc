//! Determines the cargo path currently used to build the binary and
//! fails the build if there is a mismatch with the expected cargo path
//! given by the EXPECTED_CARGO_PATH environment variable.
//! Fails the build if:
//!
//! - The cargo path doesn't match EXPECTED_CARGO_PATH.
//! - The rustc version doesn't match EXPECTED_RUSTC_VERSION.

use std::{env, fs::canonicalize, process::Command};

fn main() {
    // ===========================
    // CHECK 1: Compare cargo path
    // ===========================
    let expected_string = env::var("EXPECTED_CARGO_PATH")
        .expect("Fatal: Environment variable EXPECTED_CARGO_PATH has not been set");
    let actual_string = env::var("CARGO")
        .expect("Fatal: Environment variable CARGO was not set by the build system");

    let expected_cargo = canonicalize(&expected_string)
        .expect("Fatal: Failed to canonicalize value of EXPECTED_CARGO_PATH");
    let actual_cargo =
        canonicalize(&actual_string).expect("Fatal: Failed to canonicalize value of CARGO");

    // Ensure the actual cargo path being used to build the program
    // matches what is expected
    if expected_cargo != actual_cargo {
        panic!(
            "Fatal: Expected cargo path was {}, got {}",
            expected_cargo.display(),
            actual_cargo.display()
        );
    }

    // ==============================
    // CHECK 2: Compare rustc version
    // ==============================
    let expected_rustc = env::var("EXPECTED_RUSTC_VERSION")
        .expect("Fatal: Environment variable EXPECTED_RUSTC_VERSION has not been set");

    // Get actual rustc version
    let rustc = env::var("RUSTC").expect("Fatal: Environment variable RUSTC has not been set");
    let output = Command::new(rustc)
        .arg("--version")
        .output()
        .expect("Fatal: Failed to execute `RUSTC --version`");
    let stdout =
        String::from_utf8(output.stdout).expect("Fatal: rustc version output was not valid UTF-8");
    let actual_rustc = stdout
        .split_whitespace()
        .nth(1)
        .expect("Fatal: rustc version output format was incorrect");

    // Ensure the actual rustc version being used to build the program
    // matches what is expected
    if expected_rustc != actual_rustc {
        panic!("Fatal: Expected rustc version was {expected_rustc}, got {actual_rustc}");
    }
}
