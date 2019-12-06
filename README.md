# LOGIC - LOGic Is Compiled Programming Language
This programming language is part of our(3 people including me) project in CS315 class at Bilkent university.

## Introduction

Programs written in LOGIC are one of two types. Either a set of predicate definitions followed by a set of statements or simply a set of statements by themselves. This is similar to how Python is, in the sense that statements can hold on their own. We decided to go with this method given the fact that LOGIC is a language targeted towards propositional calculus. More often than not, users might want to write simple script to perform certain logical operations without the need to define complex predicates/functions. Yet, for the language to be powerful enough, and provide a level of abstraction, predicates exist. 

LOGIC, unlike many other languages, does not expect statements to end with semicolons. It simply assumes that upon parsing a legal rule it should expect another statement. LOGIC does, however require the use of curly brackets to enclose blocks. This, apart from providing a nice visual representation of blocks to increase readability (more on this bellow), eliminates ambiguity when it comes to nesting if-statements. 

Although LOGIC ignores white space by default, and as such is indifferent towards indentation, we recommend that programmers abide by indentation conventions to make code easier to read and understand.

## Readability

One of our main goals while designing the LOGIC programming language was to prioritize readability. While the average person with no prior coding experience will probably have a hard time understanding a whole program in LOGIC, any programmer familiar with other languages will face no problems reading LOGIC. 

A few things a new programmer to LOGIC would need to know before reading LOGIC code are the following:

Variable names start with the ‘$’ symbol. A convention brought over from many languages such as PHP, BASIC, Perl and Shell. This makes it easy to recognize variables anywhere in the program.

Defining a predicate is intuitive, and as such very easy to read. Just like in python, the ‘def’ keyword is used, followed by the name of the predicate to be defined.

Predicates are called by the use of the ‘@’ symbol followed by the predicate name. This differentiates predicates from variables.

Along with removing ambiguity for nested if-statements as mentioned before, curly brackets are used as block identifiers to help the readers understand the beginning and end of a blocks such as predicate definitions, while loops and if-else statements.

Finally, the operators defined in LOGIC resemble as much as possible their counterparts  in mathematics. So mathematicians attempting to use LOGIC will find => and ⇔ familiar. And programmers coming from other languages will be used to operators such as  &, |, !, ^, ==, //  to be similar to operators in many other languages.

## Writability

Programmers will find that LOGIC provides some flexibility making it score high on writability. Variables, for example, could be declared by either specifying their type or not; they can also be initialized and declared in one statement with no need to specify the type: $var = true. 

As mentioned before, LOGIC allows programs made up of any combination of predicates followed by statements, just predicates or just statements. It allows the programmer to create whatever they want. It also has a small set of constructs and features, it is easy to learn and use them all correctly. No confusion between pass by value  and pass by reference, or between dynamic allocation and static allocation. Hence, LOGIC is orthogonal, simple, reliable and easy to learn.

### Future Work
The compiler needs to be implemented for this programming language, to make it fully functional.
