! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: hash-sets help.markup help.syntax kernel math sequences ;
IN: aoc2020.day22

HELP: 1game
{ $values
    { "deck1" sequence } { "deck2" sequence }
    { "deck1'" sequence } { "deck2'" sequence }
}
{ $description "Plays a game (or a sub-game) of Recursive Combat. Loop until one of the decks is exhausted: if the played cards satisfy the condition for recursion, play a sub-game, and sort out the cards based on its outcome. Otherwise, play a regular turn (history check and a Combat turn)." } ;

HELP: 1turn
{ $values
    { "deck1" sequence } { "deck2" sequence }
    { "deck1'" sequence } { "deck2'" sequence }
}
{ $description "Plays one turn of Combat. Compare the first card of each deck. The card with the higher value wins, and both cards go to the winner's deck, winning card first." } ;

HELP: 1turn'
{ $values
    { "history" hash-set } { "deck1" sequence } { "deck2" sequence }
    { "deck1'" sequence } { "deck2'" sequence }
}
{ $description "Plays one turn of Recursive Combat. If the current state is already seen in the current game, the first player wins the game right away (represented by unmodified deck 1 and emptied deck 2). Otherwise, the turn is played like a regular Combat." } ;

HELP: day22-gold
{ $values
    { "decks" sequence }
    { "n" integer }
}
{ $description "Solves Day 22, Part 2 of AoC2020: play the game of Recursive Combat using the given decks, and return the score of the winner." } ;

HELP: day22-main
{ $description "Solves both parts of Day 22 of AoC2020, using a real dataset." } ;

HELP: day22-silver
{ $values
    { "decks" sequence }
    { "n" integer }
}
{ $description "Solves Day 22, Part 1 of AoC2020: play the game of Combat using the given decks, and return the score of the winner." } ;

ARTICLE: "aoc2020.day22" "aoc2020.day22"
{ $vocab-link "aoc2020.day22" }
;

ABOUT: "aoc2020.day22"
