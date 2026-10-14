// Allow the crate to have a non-snake-case name (RintedHLE).
// This also allows items in the crate to have non-snake-case names.
#![allow(non_snake_case)]

pub fn main() {
    let mut args = std::env::args();
    let _ = args.next().unwrap(); // skip argv[0]
    match (args.next(), args.next()) {
        (Some(x), None) if x == "--branding" => println!("{}", RintedHLE_version::branding()),
        (None, _) => println!("{}", RintedHLE_version::VERSION),
        _ => panic!(),
    }
}
