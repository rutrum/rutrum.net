+++
title = "C"
date = 2020-10-01

[extra]
github = "https://github.com/rutrum/12-languages/tree/master/c"
+++

C has been around so long that it's developers have had time to create an enormous pallete of paradigms and style conventions, just in case you weren't happy with the one you were writing in.

<!-- more -->

Not only was this the first month, but I picked a language that, while fundamental, isn't all that popular.  Tutorials, projects, and books aren't as plentiful as I am used to with a popular language like JavaScript or a "new contestant" like Rust.  I wasn't entirely successful this month either, but I learned a lot. 

## Modern C

I started by reading most of [Modern C](https://modernc.gforge.inria.fr/).  The book pitches C at a more advanced level with excercises and "challenge" problems throughout.  I was going to attempt any of the challenge problems that looked interesting.

This book started by addressing old C paradigms and suggesting a "modern" alternative.  Then the book jumps into variables, conditionals, and loops.  Following this was the first challenge problem posed by the book: implement quick-sort and merge-sort.  Considering the book had yet talk about functions or arrays, I came back to bit later.  This would be a common theme with this book: not fully explaining topics as they are needed in examples and challenge problems that would eventually be taught later in the book.

Eventually, the book explains about everything I'd want to know, just not in the right order.  I stopped before the final part: C for experts, basically.  At the point I realized I had already spent more than half the month just reading this book, and thought I should do something a bit more applied, considering I did very few exercises from the book.  Modern C had me well prepared for my next project.

## Kilo: Command Line Text Editor

[This tutorial](https://viewsourcecode.org/snaptoken/kilo/index.html) walked me through enabling a terminal's raw mode, capturing keyboard input, reading files to the screen, and making changes to files.  I rewrote vim in the most barebones way possible.  It is a well written tutorial, ensuring that every change to code blocks can be compiled, so I can always check to confirm that the code does what I think it does.  I'm sure I'll come across tutorials in the coming months that spend an entire article walking through code only for it to work at the very end.  Nearly ever line was explained too, focusing on how it related to the text editor, not necessarily how C works.  Reading Modern C was so helpful for this reason.

I stopped right before syntax highlighting, realizing that the rest of the learning would be able actual syntax highlighting, not C paradigms.  Writing kilo made me realize that I knew enough C to not get tripped up at something fundamental and that I knew how to find a solution to my problems as needed.  So I guess that means I "learned C", wahoo!  But can I write C well?  Actually, no I can't.

## Contributing to Open Source

I started too late to find a project.  I knew of lots of C projects I would be interested in (linux window managers, status bars, command line utilities) but I really needed to find one that was small in scale and had some simple issues on Github.  I found a project called [cfm](https://github.com/willeccles/cfm), an interactive command line file explorer, like [ranger](https://github.com/ranger/ranger).  This was just some guy's personal project, but it has a significant number of stars and it certainly seemed like there were individuals out there that used regularly cfm.  The project was a single 2000 line C file.  Perfect!

Not perfect.  Even though the project was just a single file, was limited in scope, and I had just followed a tutorial on an interactive command line utility, I still struggled to implement a bulk copy and paste.  I was unable to solve the issue due to time constraints and still not understanding C perfectly.  In particular I was struggling at allocating a variable length array that pointed to fixed length arrays.  Even if I passed that, trying to integrate what I thought was a solution to this project was going to be a challenge.  The owner of the repo even said to me ["if you're new to C this is arguably the worst program you could work on just given how unholy the code is written"](https://github.com/willeccles/cfm/issues/26).  I was up for the challenge, but fell short.

Next thing I knew the month was over; I did not pace myself well. Before beating myself up about it I realized that this was the first month in a language that is not the easiest to learn.  Besides, I'll get a chance to sharpen my C skills in month 7 with C++.

## What I Liked About C

There is only so many built in language features with C, but at the same time there are a few (unsafe) features that really make C very powerful and close to the metal.  C has the concept of pointers, or data types that are locations in memory where data is allocated.  This is often difficult to learn for new programmers, but its what makes C tick. I think programming is difficult without it.  Unfortunately, Modern C only addressed pointers only after chapter 10 (get it?)  Pointers perform a variety of tasks not directly addressed by a C language feature, such as static arrays, variable length arrays, null values, and "pass by reference" (pretty sure C is why it is called that.)

```{c}
#import <stdlib.h>
#import <stdio.h>

void birthday(int* age) {
    *age += 1;
}

int main() {
    int age = 22;
    birthday(&age);
    
    char* names[3] = {"Troy", "Ryan", "David"};

    printf("%s just turned %i!\n", names[1], age);

    return EXIT_SUCCESS;
}
```

```
> ./a.out
Ryan just turned 23!
```

Pointers are a beautiful way to accomplish many of these features.  They force the programmer to have a deep understanding of how data is allocated and exactly how big it is. And because pointers are just memory addresses, I can even perform arithmetic with them!  Of course this comes at the great cost of screwing it up and not knowing it.  

You can cast pointers to other data types (or of "unknown" datatype refered to as `void*`) which, while allowed, is dangerous as you start interpreting memory in a wrong or unexpected way, causing memory leaks, double frees, and just a whole lot of confusion.

...but you can cast any pointer as `unsigned char*` which is an appropriate and safe way to peek at the bits underlying a data structure.  I used this technique in a small command line utility I wrote called `fbits` which tells you the bit representation of floating point numbers.  Here is a function I used to print out the bits a double.

```{c}
void print_f64(double f) {
    unsigned char* cs = (unsigned char*)&f;

    for (size_t i = 0; i < sizeof(double); i++) {
        unsigned char c = cs[sizeof(double) - i - 1];
        for (size_t j = 0; j < CHAR_BIT; j++) {
        size_t ord = CHAR_BIT * i + j;
        if (ord == 1 || ord == 1 + 11) {
            printf(" ");
        }

        size_t b = 
                (c & 1 << (CHAR_BIT - j - 1)) == 0 
                ? 0 : 1;
        printf("%zu", b);
        }
    }
    printf("\n");
```

And of course these features are a bit niche.  They aren't necessary features, considering you won't find pointers in Python or Java (well, I don't think).  They complicate things without providing safety.  You can easily write bad code that works sometimes, breaks others, and seg-faults unexpectedly.  Being able to peek at memory you don't own is just a par for the course.  That said, they are cool and make me feel like a very, very powerful programmer.

There's no error handling in C, which I prefer, because I am strongly against try-catch statements because to me they are clunky and always catch too much or not enough.  C's standard library just uses the return value as a status on the success of the function.  And when you need to return some new or mutated data, just pass a pointer!  It's not as conventient as Rust's `Result` enum but I far prefer returning an `int` than throwing an error up the error stack like in Java or Python.

```{c}
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    char letter = '\0';
    int success = read(STDIN_FILENO, &letter, 1);
    if (!success) {
        return EXIT_FAILURE;
    }
    printf("...You typed %c\n", letter);
    return EXIT_SUCCESS;
}
```

```
> ./a.out
d 
...You typed d
```

## What I Didn't Like

I know this language is as old as dust but what I hate most about C is that there is little consistency across C programming and C developers.  Everyone formats code differently. Some people use macros every chance they get and some people can't pick between `int` or `size_t` or `unsigned` for a loop iterator.  Unlike modern languages with linters and formatters, ever C program I came across had differences.  To demonstrate one of these differences (that I feel strongly about) is how to annotate the type of pointers.  Examine the following.

```{c}
int a = 5;
????? b = &a;
```

What type is `b`?  That's right, its a pointer to an `int`, so its type is `int*`.  So why on earth would you write `int *b = &a` instead of `int* b = &a`?  That always made C programming hard to read for me. Modern C told me to write `int*`. I'm glad I'm not the only one that thinks this.

Namespacing has to be my second dissapointment.  Having every function and structure sit at the same level sounds like a disaster.  The Modern C book had me start every function that worked with a rational number struct with `rat_`.  Typically you would hide functions behind modules, namespaces, or classes.  But even if you write different files in C they all get globed into the same scope (with the exception of functions with `static`).

At the end of the day though, C just lacks features.  It is totally possible I missed a whole feature set of C but it really is limited.  Maybe I'm spoiled with modern languages but the lack of encapsulation around variable-length arrays, for example, is really something I've taken for granted.

During the text editor project I had to write my own variable length string buffer `struct abuf`.  It seems funny that I'd have to write that myself.  Unlike modern languages though, I don't think there is an ubiquitous package manager for C, and even the standard library is limited.  If you need something small like a data structure, more often than not you simply need to write it yourself.

```{c}
struct abuf {
    char* b;
    int len;
};

#define ABUF_INIT {NULL, 0}

void abAppend(struct abuf* ab, char const* s, int len) {
    char* new = realloc(ab->b, ab->len + len);

    if (!new) return;
    memcpy(&new[ab->len], s, len);
    ab->b = new;
    ab->len += len;
}

void abFree(struct abuf* ab) {
    free(ab->b);
}
```

## Overall Thoughts on C

I can't shake this feeling that C++ is going to solve all my problems that come with C.  And I think many people agree that while you can write in C, why not write in C++?  When searching for github projects written in C or even any sort of C standard library documentation, I always found C++ 90% of the time instead.

That said, C by itself is simple.  It doesn't have a lot of features because it doesn't need a lot of features.  Because the language is so simple and low level, it performs really well (possibly the best) and is the standard for writing operating systems and compilers.  Being so involved in memory management allows the programmer to optimize their code perfectly, minimizing overhead at every chance.  I'm not sure theres a big difference between how efficient you can write a C program versus the same program written directly in assembly.

So, will I be writing in C again?  Only if I want to contribute to my favorite linux utility.  I'll be sticking with Rust for everything else.  That said though, the rust ecosystem is still new, and many libraries are really just bindings for C libraries, so I think working with C might be inescapable.  I'm happy I started with C for month 1, despite how difficult this first month was. 

## Overall Thoughts on Month 1

I don't know C well enough to solve github issues clearly, but I know it well enough to read it.  This month was harder than expected.  I wasn't able to find a good issue on a C project to tackle, and I didn't time the month optimally either.

I did very little actual programming this month, which might contribute to my lack of performance when tackling the ticket for `cfm`.  I should have tackled a few more projects.  I discovered [this wonderful list of project tutorials on github](https://github.com/danistefanovic/build-your-own-x) and should leverage it more to do a few more hands on experiments throughout the month.  I should focus less on tutorials and just jump right into it.  Especially for something like Java, where I have some prior experience, jumping right into a project walkthrough might be a fun way to start the month.

I didn't expect month 1 to go perfectly anyway.  It still ended well, being able to say "I can read C."  Month 2 will be even better.  Let's learn Java!
