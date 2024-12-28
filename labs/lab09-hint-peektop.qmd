---
title: "Lab 09: Hint peekTop()"
format: 
  html:
    css: /labs/lab-styles.css
---

The stub of `peekTop()` should look like this:

``` cpp
Item Stack::peekTop() const {
}
```

The variable `mySize` always contains the number of items in the Stack:

-   when the stack is empty, `mySize == 0`;
-   when the stack contains 1 item, `mySize == 1` and the top item is at index 0;
-   when the stack contains two items, `mySize == 2` and the top item is at index 1;
-   when the stack contains three items, `mySize == 3` and the top item is at index 2;
-   etc.

More generally, when the stack is not empty, the top item is 1 position "down" from the value of `mySize`.

So when the stack is not empty, `peekTop()` should return the item from `myArray` that is 1 less than the current value of `mySize`.