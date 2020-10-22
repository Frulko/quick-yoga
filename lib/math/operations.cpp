#include <exception>
#include <stdexcept>
#include <iostream>
#include "operations.hpp"
#include "plop.hpp"

int math::operations::sum(const int &a, const int &b){
    return a + b;
}
int math::operations::mult(const int &a, const int &b){
    return a * b;
}
int math::operations::div(const int &a, const int &b){
    if(b == 0){
        throw std::overflow_error("Divide by zero exception");
    }
    return a/b;
}
int math::operations::sub(const int &a, const int &b){
    return a - b;
}

void math::operations::test() {
    math::plop p;
    p.test_function();

    math::here();
    h::foo();
    plop();

    std::cout<<"--> test"<<std::endl;
}

void math::operations::new_method() {
    std::cout<<"--> new_method"<<std::endl;
}
