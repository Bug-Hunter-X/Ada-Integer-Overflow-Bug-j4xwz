# Ada Integer Overflow Example

This repository contains an example of a common, yet often subtle, error in Ada: integer overflow.

The `bug.ada` file showcases a function `Add_Numbers` that adds two integers.  However, this function doesn't handle potential overflow scenarios.

The `bugSolution.ada` file demonstrates a more robust version with error handling.