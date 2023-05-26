import ballerina/http;
import ballerina/io;

final http:Client brainyQuoteClient = check new ("http://localhost:9095/brainyquote");

// Invoke the HTTP client and try to retrive a quote. This result should be a union type consisting `string` and `error`
// If the quote is received, print it to the console (using `io:println()`).
// If an `error` has occurred, print the error message to the console
public function main() {
    string|error quote = brainyQuoteClient->/;

    if quote is string {
        io:println(quote);
    } else {
        io:println(quote.message());
    }
}
