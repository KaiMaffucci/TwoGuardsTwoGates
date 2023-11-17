# TwoGuardsTwoGates
A prolog project to demonstrate why the solution to the classic "two guards guard the gates to heaven and hell, only one tells the truth and one lies" dilemma works. 

I will update the readme later, I am tired. 

## The puzzle

The puzzle is as follows. You stand in front of two doors, with a guard in front of each door. You know that one of the guards tells the truth, and the other lies. You also know that one of the doors leads to heaven, and the other to hell (or life or death or whatever version of the puzzle you're looking at). You can only ask one of the guards a single question. That means only one question can be asked total, no matter who you ask it to: NOT one question each guard. What question do you ask to get to heaven? 

## The solution to the puzzle

The tranditional solution to the puzzle is to ask either of the guards "if I were to ask the *other* guard which door leads to heaven, which door would they point to?"

If the guard you ask tells the truth, the other guard would lie and point to the door that leads to hell. In this case, the honest guard would truthfully state that the other guard would lie about the door.

If the guard you ask lies, the other guard would tell the truth about the door leading to heaven. So the guard you're talking to would then lie about what they would say, and point to the door to hell. 

## The math behind it

This problem can be represented with mathematical notation. The math is quite simple, as it's just basic set theory and logic. 

To start, there are two guards total. We don't know which is the guard we're talking to, but we know that one of them always tells the truth and one of them always lies. We'll call whatever one tells the truth $$G_1$$ and the other one $$G_2$$. 

$$
{|G| = 2}
{\exists! G_1 \in G}
{\exists! G_2 \in G}
$$


<write more>
