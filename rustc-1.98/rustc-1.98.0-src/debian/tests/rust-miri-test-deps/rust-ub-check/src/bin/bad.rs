use rust_ub_check::maybe_init_i32;

/// This causes UB on purpose.
fn main() {
    println!("{}", unsafe { maybe_init_i32(None) });
}
