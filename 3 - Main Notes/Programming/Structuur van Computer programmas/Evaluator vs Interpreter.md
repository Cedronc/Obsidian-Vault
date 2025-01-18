**TLDR:** An **evaluator** and an **interpreter** are tools used to execute or process code in programming languages. While their purposes overlap, they have distinct roles and contexts. Here's a breakdown:

---
## **1. Evaluator**
An **evaluator** is a component or function in a programming language system that takes an **expression** or a **piece of code** and computes its result without necessarily executing a full program. Evaluators are often part of a **language runtime** or **interpreter**.

- **Purpose**: To compute the result of a single expression or a small set of instructions.
- **Scope**: Limited to evaluating specific constructs (like arithmetic, logical expressions, or function calls).
- **Example**: 
  - In Python: 
    ```python
    result = eval("2 + 3 * 4")
    print(result)  # Output: 14
    ```
  - The `eval()` function evaluates the string as a Python expression.
- **Use Case**: 
  - REPLs (Read-Eval-Print Loops) in languages like Python or Lisp.
  - Runtime computations (e.g., evaluating dynamic user inputs).

---

## **2. Interpreter**
An **interpreter** is a broader tool that reads, parses, and **executes an entire program** line by line or statement by statement. It translates code into machine-executable actions dynamically, without producing a standalone binary or executable file.

- **Purpose**: To execute code directly.
- **Scope**: Handles the entire program, including control flow, variable management, and function calls.
- **Example**:
  - Python itself is an interpreted language; the Python interpreter reads and executes your `.py` script line by line.
  - Running a script:
    ```bash
    python script.py
    ```
- **Use Case**:
  - Debugging and prototyping code.
  - Languages like Python, Ruby, JavaScript, and PHP.

---

## **Key Differences**

| **Aspect**   | **Evaluator**                            | **Interpreter**                              |
| ------------ | ---------------------------------------- | -------------------------------------------- |
| **Focus**    | Evaluates expressions or small snippets. | Executes entire programs.                    |
| **Scope**    | Limited to computing specific values.    | Covers full program semantics (e.g., loops). |
| **Output**   | Returns a computed value.                | Executes code, producing runtime effects.    |
| **Examples** | `eval()` in Python, Lisp REPLs.          | Python interpreter, Node.js for JavaScript.  |

---

In summary, an evaluator is a smaller, focused component often used within an interpreter for evaluating specific expressions, while an interpreter executes full programs and handles more comprehensive tasks.

# **Runtime errors vs. Syntax errors**
Syntax errors occurs when the read phase finds something wrong with the procedure. Being that the syntax is incorrect. 
Runtime errors on the other hand happen when the procedure is being evaluated making the semantics incorrect (when running incorrect).