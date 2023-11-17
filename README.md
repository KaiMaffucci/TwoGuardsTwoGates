# TwoGuardsTwoGates
A prolog project to demonstrate why the solution to the classic "two guards guard the gates to heaven and hell, only one tells the truth and one lies" dilemma works. 

## The puzzle

The puzzle is as follows. You stand in front of two doors, with a guard in front of each door. You know that one of the guards tells the truth, and the other lies. You also know that one of the doors leads to heaven, and the other to hell (or life or death or whatever version of the puzzle you're looking at). You can only ask one of the guards a single question. That means only one question can be asked total, no matter who you ask it to: NOT one question each guard. What question do you ask to get to heaven? 

## The solution to the puzzle

The tranditional solution to the puzzle is to ask either of the guards "if I were to ask the *other* guard which door leads to heaven, which door would they point to?"

If the guard you ask tells the truth, the other guard would lie and point to the door that leads to hell. In this case, the honest guard would truthfully state that the other guard would lie about the door.

If the guard you ask lies, the other guard would tell the truth about the door leading to heaven. So the guard you're talking to would then lie about what they would say, and point to the door to hell. 

This means that no matter who you ask, the door to heaven will always be the opposite of which the guard you ask points to. 

## The math behind it

This problem can be represented with mathematical notation. The math is quite simple, as it's just basic set theory and logic. Signifigant credit to Mr. Cullinane, a friend of mine who helped me put the math together. Especially the fundementals of everything, and the algebraic explaination. 

To start, there are two guards total. We don't know which is the guard we're talking to, but we know that one of them always tells the truth and one of them always lies. We'll call whatever one tells the truth $G_1$ and the other one $G_2$. We don't know what door is $G_1$ or $G_2$ though. 

$$ |G| = 2 $$

$$ \exists! G_1 \in G $$

$$ \exists! G_2 \in G $$

1: It's the same idea for the doors: there are two of them, we name $D_1$ as the door that leads to heaven, and $D_2$ the one that leads to hell. Like before, we don't know what door $G_1$ or $G_2$ is. 

$$ |D| = 2 $$

$$ \exists! D_1 \in D $$

$$ \exists! D_2 \in D $$

From here there are two ways to describe the solution. There's the more propositional logic way, and the more algebraic way. For the sake of the README I'll explain it in the more propositional way, since it's what our prolog program is modeled after, as it's what prolog was capable of. However, I like the algebraic way too, so I'll put it in a seperate file in the repository.  

2: To represent that one guard tells the truth and one lies, we assign true to the truthful one and false to the lying one. 

$$ G_1 \Leftrightarrow \top$$

$$ G_2 \Leftrightarrow \bot$$

We do the same with the doors. 

$$ D_1 \Leftrightarrow \top$$

$$ D_2 \Leftrightarrow \bot$$

In the prolog program it does step 2 before step 1, because it has to in order to compare it to something in step 1. 

Carrying onwards, this gives us a few facts to work with. 

$$ G_1 \Leftrightarrow D_1 $$

$$ G_2 \Leftrightarrow D_2 $$

We also know that asking the guard what door the other would say always leads to hell. You can think of the particular mathematical notation here saying "guard 1's truthfulness and guard 2's truthfulness (combined is always false, which) is the same as leading to hell." Vice-versa as well. In the code I effectively define these as "guard 1's response" and "guard 2's response." There's a bunch of other facts you could say as well, but it's not really necessary for the sake of the puzzle. Although I believe do in the prolog program, just to reinforce everything is valid. 

$$ G_1 \land G_2 \Rightarrow D_2 $$

$$ G_2 \land G_1 \Rightarrow D_2 $$

Since we know that no matter who we ask will point to hell, we need to take the inverse of that to get the right door. 

$$ \neg (G_1 \land G_2) \Rightarrow D_1 $$

There you have it! This statement being true means you should take the opposite door of whatever guard you ask the solution question to points towards. 
