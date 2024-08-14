pub fn steps(number: usize) anyerror!usize {
    var counter: usize = 0;
    var tmp: usize = number;

    if (tmp < 1) {
        return error.DivideByZero;
    }

    while (tmp != 1) {
        if (tmp / 2 == 0) {
            tmp = tmp / 2;
            counter += 1;
        } else {
            tmp = (tmp * 3) + 1;
            counter += 1;
        }
    }

    return counter;
}
