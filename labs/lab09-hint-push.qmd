---
title: "Lab 09: Hint push()"
format: 
  html:
    css: /labs/lab-styles.css
---

The stub of `push()` should look like this:

``` cpp
void Stack::push(const Item& it) {
}
```

Note that when the stack is empty, `mySize` is 0: when the stack contains 1 item, `mySize` is 1; when the stack contains 2 items, `mySize` is 2; and so on. Put differently, `mySize` always contains the index of `myArray` where we want `push()` to store its item!

The `push(it)` method should thus behave as follows:

-   Store `it` in the entry of `myArray` whose index is `mySize`.
-   Add 1 to `mySize`.