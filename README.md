My Factor solutions to Project Euler problems
=====================

This repository is mirrorring my Factor solutions to Project Euler problems.
My contributions can also be found in [Factor main repository](https://github.com/slavapestov/factor) extra vocabulary `project-euler`.

## Running a solution

In order to run a problem solution, all you need is to load its vocabulary and call its main word.
The following example, ran using from Factor scratchpad, will return the solution for problem 188 on the stack:

```factor
USE: project-euler.188

euler188 
```

## Timing a solution

You can print the execution time for a solution by using the word `time`, as shown in the following example.

```
[ euler 188 ] time
```

Running this command will print the execution time.

## Notes

Problem descriptions were stripped on urpose from the original solutions for better readability.
