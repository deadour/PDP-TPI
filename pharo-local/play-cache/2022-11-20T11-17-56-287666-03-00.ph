(movimiento='H') ifTrue:[ C:=0. band:=True. i:=1. j:=0. cj:=0.	[ band=True ] whileTrue:[		1 to:3 do:[			(((arreglo at:i)at:j)=0) ifTrue:[				c:= c + 1			].			(((arreglo at:i)at:j)=unJugador) ifTrue:[				cj:= cj + 1			]		].	 ((c +cj)=3) ifTrue:[		" arreg:= Metodo4casillaHz:i columna:j cont:c contc:cj jug:unJugador."		c:=arreg at:1.		cj:=arreg at:2.		mov:=arreg at:3.		].	|x mov  x1 x2  arr | (i=1) ifTrue:[	   x:=i.		x:= x +1.		(((arreglo at:x)at:j) =unJugador) ifTrue:[		     cj:= cj +1.		   (cj=4) ifTrue:[ 				   c:=0]			ifFalse:[mov:= mov + 1]]].					(((arreglo at:x) at:j)=0) ifTrue:[				mov:= mov + 1]		  ifFalse:[c:=0].			(i=4) ifTrue:[		x:= i.		x:= x -1.		(((arreglo at:x)at:j)=unJugador )ifTrue:[ 			cj:= cj +1.			(cj=4) ifTrue:[ 					c:=0]			  ifFalse:[mov:= mov + 1]].			(((arreglo at:x) at:j)=0) ifTrue:[					mov:= mov + 1]		    ifFalse:[c:=0]].			((i > 4) and:[i < 1]) ifTrue:[		x1:= i.		x2:= i.		x1:= x1 +1.		x2:= x2 -1.		(((arreglo at:x2)at:j)=unJugador )ifTrue:[		   cj:= cj +1] .			 (cj = 4) ifTrue:[				c:=0]			  ifFalse:[mov:= mov + 1]].		(((arreglo at:x2)at:j) =0) ifTrue:[			mov:= mov + 1]		 ifFalse:[c:=0].			(((arreglo at:x2) at:j)=unJugador) ifTrue:[		cj:= cj +1.		(cj=4) ifTrue:[			c:=0]		ifFalse:[mov:=mov + 1]].			(((arreglo at:x2) at:j)=0)ifTrue:[				(((arreglo at:x2)at:j)=0)ifTrue:[			mov:= mov + 1]		  ifFalse:[c:=0]].