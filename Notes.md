# My notes

- A shell program, called a script, is an easy-to-use tool for building applications by "gluing together" system calls, tools, utilities, and compiled binaries.

Quote

> No programming language is perfect. There is not even a single best language; there are only languages well suited or perhaps poorly suited for particular purposes.
>
> > ~ Herbert Mayer

A shell script is a quick-and-dirty method of prototyping a complex application. Getting even a limited subset of the functionality to work in a script is often a useful first
stage in project development. In this way, the structure of the application can be tested and tinkered with, and the major pitfalls found before proceeding to the final coding in
C, C++, Java, Perl, or Python.

According to Herbert Mayer, "a useful language needs arrays, pointers, and a generic mechanism for building data structures." By these criteria, shell scripting falls somewhat
short of being "useful." Or, perhaps not. . . .

**Lots of use cases_where not to use bash simply, here..**

If any of the above applies, consider a more powerful scripting language -- perhaps Perl, Tcl, Python, Ruby -- or possibly a compiled language such as C, C++, or Java. Even then,
prototyping the application as a shell script might still be a useful development step.

**We will be using Bash, an acronym [3] for "Bourne-Again shell" and a pun on Stephen Bourne's now classic Bourne shell.**

Bash has become a de facto standard for shell scripting on most flavors of UNIX.

You can execute a shell script by assigning it executable permissions with command

`chmod u+rx scriptname`

Here, reading from awesome man page of `man chmod`, I get to see that `u` means the user who own the file, apart you could have used `a` or `g` to assign executable permissions to
those if you wanted them to have such permissions.

An acronym is an ersatz word formed by pasting together the initial letters of the words into a tongue-tripping phrase. This morally corrupt and pernicious practice deserves
appropriately severe punishment. Public flogging suggests itself.

## Chapter 2. Starting Off With a Sha-Bang

The sha-bang ( #!) [1] at the head of a script tells your system that this file is a set of commands to be fed to the command interpreter indicated. The #! is actually a two-byte
[2] magic number, a special marker that designates a file type, or in this case an executable shell script (type man magic for more details on this fascinating topic). Immediately
following the sha-bang is a path name. This is the path to the program that interprets the commands in the script, whether it be a shell, a programming language, or a utility. This
command interpreter then executes the commands in the script, starting at the top (the line following the sha-bang line), and ignoring comments. [3]

examples of sha-bang

```bash
#!/bin/sh
#!/bin/bash
#!/usr/bin/perl
#!/usr/bin/tcl
#!/bin/sed -f
#!/bin/awk -f
```
