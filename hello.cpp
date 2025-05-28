#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <iomanip>

class Message {
private:
    std::string text;

public:
    Message(const std::string& msg) : text(msg) {}

    void to_uppercase() {
        std::transform(text.begin(), text.end(), text.begin(), ::toupper);
    }

    void display() const {
        std::cout << "Message: " << text << std::endl;
    }

    std::string get() const {
        return text;
    }
};

template<typename T>
double average(const std::vector<T>& vec) {
    if (vec.empty()) return 0.0;
    T sum = 0;
    for (const auto& val : vec) {
        sum += val;
    }
    return static_cast<double>(sum) / vec.size();
}

int main() {
    std::cout << "=== Advanced C++ Example (PowerPC) ===\n" << std::endl;

    Message msg("Hello from PowerPC!");
    msg.display();
    msg.to_uppercase();
    msg.display();

    std::vector<int> numbers = {10, 20, 30, 40, 50};
    double avg = average(numbers);
    std::cout << std::fixed << std::setprecision(2);
    std::cout << "Average of numbers: " << avg << std::endl;

    std::cout << "Squares of numbers: ";
    for (int n : numbers) {
        std::cout << n * n << " ";
    }
    std::cout << std::endl;

    if (avg > 25) {
        std::cout << "The average is greater than 25." << std::endl;
    } else {
        std::cout << "The average is 25 or less." << std::endl;
    }

    std::cout << "\n=== End of Program ===" << std::endl;

    return 0;
}