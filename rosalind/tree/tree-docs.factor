! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.tree

HELP: tree
{ $values
    { "n" "An integer" } { "adjlist" "A sequence" }
    { "ans" "An integer" }
}
{ $description "Solves the problem TREE on Rosalind: given the number of nodes and the adjacency list of a graph, compute how many additional edges are needed to make it a tree." { $nl "" }
"Uses the fact that a tree of n nodes has n-1 edges, so the answer is (n-1) - (number of existing edges)." } ;

HELP: tree-main
{ $description "Solves the problem TREE on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.tree" "rosalind.tree"
{ $vocab-link "rosalind.tree" }
;

ABOUT: "rosalind.tree"
