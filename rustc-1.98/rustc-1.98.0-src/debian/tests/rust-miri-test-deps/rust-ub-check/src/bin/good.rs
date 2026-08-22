use rust_ub_check::maybe_init_i32;

/// This shouldn't cause UB.
fn main() {
    println!("{}", unsafe { maybe_init_i32(Some(42)) });
}
