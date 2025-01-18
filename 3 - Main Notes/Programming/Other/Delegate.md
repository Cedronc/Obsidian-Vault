---
tags: []
---
- [i] Status: #finished 
- [i] Back links: [[Callback Methods]]
___
**TLDR:** The type delegate is assigned when you want to declare a function as a property or variable to be used as a parameter in an other method ([[Callback Methods]]).
# Delegate

^0ffd6b

In C#, a delegate is a type that represents references to methods with a specific parameter list and return type. Delegates are akin to function pointers in C++ but are type-safe and secure. They encapsulate a method, or a reference to a method, in a way that allows the method to be called later, providing a powerful mechanism for defining callback methods and event handling.

The primary utility of delegates lies in their ability to allow methods to be passed as parameters. This facilitates the creation of flexible and reusable code, enabling the design of methods that can call other methods without knowing them at compile time. For instance, delegates are pivotal in event handling in C#. When an event occurs, a delegate can be used to specify the method that will handle that event.

Delegates can point to both static and instance methods. They can also be chained together; for instance, multiple methods can be called on a single event. This is known as multicast delegates. The syntax for defining a delegate involves the `delegate` keyword, followed by a signature that matches the methods it can reference.

An example declaration would be `public delegate void MyDelegate(string message);`. Methods matching this signature can then be assigned to the delegate, enabling invocation of those methods via the delegate instance.
## References