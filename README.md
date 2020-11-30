# factor-problem-solving

Solutions to various problems written in Factor

## How to add a solution (Gitpod)

* Run `factor` in terminal, then enter:
    ```
    USE: tools.scaffold
    "." "problem-site.problem-code" scaffold-vocab
    "problem-site.problem-code" scaffold-tests
    "problem-site.problem-code" scaffold-docs
    ```
* See `rosalind.dna` for an example. If a solution is worth an explanation, it should go to the description in the docs.
* By convention, the `MAIN:` function solves the exact task given, while the core function solves a generalized problem.