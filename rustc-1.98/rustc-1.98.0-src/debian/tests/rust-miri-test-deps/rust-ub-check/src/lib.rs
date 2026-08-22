use std::mem::MaybeUninit;

/// If [`Some`] `i32` is passed, this function returns it. Otherwise causes UB.
///
/// # Safety
///
/// This function is (intentionally) UB if [`None`] is passed as an argument.
pub unsafe fn maybe_init_i32(num: Option<i32>) -> i32 {
    let maybe = match num {
        Some(i) => MaybeUninit::new(i),
        None => MaybeUninit::uninit(),
    };
    unsafe { maybe.assume_init() }
}
