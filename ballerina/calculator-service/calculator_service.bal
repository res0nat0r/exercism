import ballerina/http;

# + operand1 - Is a float used as the first operand in an equation
# + operand2 - Is a float used as the second operand in an equation
# + operator - Is a string that represents the operator
public type Calculation record {|
    float operand1;
    float operand2;
    string operator;
|};

# + result - The result of the operation
# + expression - The evaluated expression that used to calculate the result
public type Response record {|
    float result = 0.0;
    string expression = "";
|};

service / on new http:Listener(9090) {
    resource function post calc(@http:Payload Calculation input) returns Response {
        string expression = string `${input.operand1}${input.operator}${input.operand2}`;
        float result = 0.0;

        match input.operator {
            "+" => {
                result = input.operand1 + input.operand2;
            }
            "-" => {
                result = input.operand1 - input.operand2;
            }
            "x"|"*" => {
                result = input.operand1 * input.operand2;
            }
            "/" => {
                result = input.operand1 / input.operand2;
            }
        }

        return {result: result, expression: expression};
    }
}
