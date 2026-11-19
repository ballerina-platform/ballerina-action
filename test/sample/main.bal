import ballerina/io;

public function main() {
    io:println(greet("Ballerina"));
}

public function greet(string name) returns string {
    return string `Hello, ${name}!`;
}
