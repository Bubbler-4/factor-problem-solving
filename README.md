# factor-problem-solving

Solutions to various problems written in Factor

## How to add a solution

* Add `AUTHOR` environment variable set as your name/username. (On Gitpod, you can do this in account settings.)
* In non-Gitpod setting, copy the code in `.factor-rc` into your own.
* Run `factor` in terminal at the git repo root, then enter:
    ```
    USE: tools.scaffold
    "." "problem-site.problem-code" scaffold-vocab
    "problem-site.problem-code" scaffold-tests
    "problem-site.problem-code" scaffold-docs
    ```
* See `rosalind.dna` for an example. If a solution is worth an explanation, it should go to the description in the docs.
* By convention, the `MAIN:` function solves the exact task given, while the core function solves the core problem (no input parsing, no output formatting). Sometimes it solves a more generalized problem; sometimes it solves only a specific subset of the problem (which happens in AoC problems, when an input exploit is needed).