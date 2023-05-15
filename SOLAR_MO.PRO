domains
	list=symbol*
	
predicates
	moon(symbol,symbol,list)
	
clauses
	moon(P,S,M):-P=mercury,S=" Mercury hasn't moons ;( ",M=[];P=venus,S=" Venus hasn't moons ",M=[],!.
	moon(P,S,M):-P=earth,S="Earth has only one moon",M=["Moon"],!.
	moon(P,S,M):-P=mars,S=" Mars has two tiny moons",M=["Phobos","Deimos"],!.
	moon(P,S,M):-P=jupiter,S="Jupiter has 80 moons ",M=["Io","Europa","Titan"],!.
	moon(P,S,M):-P=saturn,S="Saturn has 83 moons",M=["Enceladus","Titan"],!.
	moon(P,S,M):-P=uranus,S="Uranus has 27 moons and were named reference to characters that apper in works of William Shakespeare",M=["Ariel","Miranda","Titania","Oberon","Umbriel"],!.
	moon(P,S,M):-P=neptune,S="Neptune has 14 moons ",M=["larissa","nereid"],!.
	moon(_,S,M):-S="This planet is not in solar system",M=[].
	
goal
	write(" please enter planet to show its moons"),nl,readln(P),
	nl,moon(P,S,M),write(S," its major moons:",M),nl.