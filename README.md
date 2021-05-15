# fib-square-brainfuck
This is a homework for software architecture 2021 spring at SFC

## How to run
```bash
$ git clone https://github.com/martian17/fib-square-brainfuck.git
$ cd fib-square-brainfuck/
$ npm install
$ node fibmatch.assembled.js
```
## Brief description of the algorithm
the content of the stack looks as follows  
[fib[1] fib[2] root]  
Every time there is a loop, fib[1] and fib[2] are updated to correspond the next Fibonacci numbers. Then root is incremented until its square is bigger than fib[2], and subtracted 1 to make its square smaller than or equal to fib[2]. if root square at this point equals fib[2], break the loop and output fib[2].  
  
For more details, please refer to the following files in this repository  

### main files  
[fibmatch.bf](https://github.com/martian17/fib-square-brainfuck/blob/main/fibmatch.bf) -- program outline without subroutines embedded  
[fibmatch.assembled.bf](https://github.com/martian17/fib-square-brainfuck/blob/main/fibmatch.assembled.bf) -- main file with embedded subroutines  
[fibmatch.assembled.js](https://github.com/martian17/fib-square-brainfuck/blob/main/fibmatch.assembled.js) -- main executable file  
  
### subroutines:  
[bf-modules/multiplication.bf](https://github.com/martian17/fib-square-brainfuck/blob/main/bf-modules/multiplication.bf) -- multiplies two integers at the top of the stack, leaves the result at the entry point  
[bf-modules/condition.bigger.bf](https://github.com/martian17/fib-square-brainfuck/blob/main/bf-modules/condition.bigger.bf) -- compares two numbers at the top of the stack, leaves 0 if the second integer is bigger, else leaves 1  
[bf-modules/condition.equal.js](https://github.com/martian17/fib-square-brainfuck/blob/main/bf-modules/condition.equal.bf) -- compares two numbers at the top of the stack, leaves 0 if two numbers are equal, else leaves 1  
  
## Why did I decide to use brainfuck?
I recently made a [brainfuck interpreter](https://github.com/martian17/jsbf) and [published it on npm](https://www.npmjs.com/package/@martian17/fuckjs), so I thought this would be a perfect opportunity for me to practice brainfuck and learn more about how stack machines function.  
Also it was a fun challenge:)
