pub fn steps(number: usize) anyerror!usize {
    var counter: usize = 0;
    var tmp: usize = number;

    if (tmp < 1) {
        return error.ComputationError;
//        ComputationError.IllegalArgument` error
    }

    while (tmp != 1) {
        if (@mod(tmp, 2) == 0) {
            tmp = tmp / 2;
            counter += 1;
        } else {
            tmp = (tmp * 3) + 1;
            counter += 1;
        }
    }

    return counter;
}


