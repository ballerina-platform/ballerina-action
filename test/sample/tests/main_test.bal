import ballerina/test;

@test:Config {}
function testGreet() {
    test:assertEquals(greet("Ballerina"), "Hello, Ballerina!");
}
