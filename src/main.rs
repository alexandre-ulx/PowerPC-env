fn main() {
    println!("Hello from Rust on PowerPC!");

    let numbers = vec![10, 20, 30, 40, 50];
    let sum: i32 = numbers.iter().sum();
    let avg = sum as f32 / numbers.len() as f32;

    println!("Average of numbers: {:.2}", avg);

    if avg > 25.0 {
        println!("The average is greater than 25.");
    } else {
        println!("The average is 25 or less.");
    }
}