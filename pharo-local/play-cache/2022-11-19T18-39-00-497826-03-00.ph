|arreglo arr mov band c cj unJugador i j x x1 x2 movimiento |arreglo:= Array new: 4.arreglo at:1 put:(arr:= Array new:4).arreglo at:2 put:(arr:=Array new:4).arreglo at:3 put:(arr:=Array new:4).arreglo at:4 put:(arr:=Array new:4).(arreglo at:1) at:1 put:'3'.(arreglo at:4) at:4 put:'4'.(arreglo at:1) at:2 put:'2'.(arreglo at:1) at:3 put:'2'.(arreglo at: 1) at: 4 put: '0'.(arreglo at: 2) at: 1 put: '0'.(arreglo at:2) at:3 put:'2'.(arreglo at:2) at: 4 put: '0'.(arreglo at:3) at:3 put:'2'.(arreglo at: 3) at: 1 put: '0'.(arreglo at: 3) at: 4 put: '0'.(arreglo at:4) at:3 put:'1'.(arreglo at:4) at:2 put:'1'.(arreglo at: 4) at: 1 put: '0'.(arreglo at:3) at:2 put:'1'.(arreglo at:2) at:2 put:'1'.		1 to:4 do:[:fila| 			1 to:4 do:[:columna|			Transcript show:((arreglo at:fila) at:columna).			Transcript show:' '.			Transcript show:'|'.			].			Transcript cr]. 		movimiento := 'H'.unJugador := 1.		(movimiento='H') ifTrue:[i:=0.j:=0. c:=0. band:=True. cj:=0.	[ band=True ] whileTrue:[	1 to: 4 do: [ :fila |         1 to: 3 do: [ :columna | 				(((arreglo at: fila) at: columna) = 0) ifTrue:[					c:= c + 1].				(((arreglo at: fila) at: columna) = unJugador) ifTrue:[					cj:= cj +1].					i:= fila.					j:= columna.				]. "columna"									((c + cj) = 3) ifTrue: [ 		(i=1) ifTrue:[ 			   		x:=i.					x:= x +1.					(((arreglo at:x )at:j ) =unJugador) ifTrue:[		     				cj:= cj +1.		  				 (cj=4) ifTrue:[ 				  				 c:=0]									ifFalse:[						mov:= mov + 1]						]					].					(((arreglo at:x) at: j)=0) ifTrue:[							mov:= mov + 1]		  											ifFalse:[								c:=0].			(i=4) ifTrue:[					x:= i.					x:= x -1.					(((arreglo at:x)at: j)=unJugador )ifTrue:[ 								cj:= cj +1.								(cj=4) ifTrue:[ 									c:=0]			  							ifFalse:[mov:= mov + 1]										].										(((arreglo at:x) at:j)=0) ifTrue:[											mov:= mov + 1]		    							ifFalse:[c:=0]									].	((i > 4) and:(i < 1)) ifTrue:[									x1:= i.									x2:= i.									x1:= x1 +1.									x2:= x2 -1.								(((arreglo at:x2)at:j)=unJugador )ifTrue:[		  							 cj:= cj +1] .			 						(cj = 4) ifTrue:[										c:=0]			  									ifFalse:[mov:= mov + 1]												].									(((arreglo at:x2)at:j) =0) ifTrue:[										mov:= mov + 1]		 																ifFalse:[												c:=0].									(((arreglo at:x2) at:j)=unJugador) ifTrue:[															cj:= cj +1.															(cj=4) ifTrue:[															c:=0]																	ifFalse:[													mov:=mov + 1]												].									(((arreglo at:x2) at:j)=0)ifTrue:[										(((arreglo at:x2)at:j)=0)ifTrue:[													mov:= mov + 1]		 																 ifFalse:[														c:=0]													].						].		"el si igual a 3"																																															] "fila"						]."mientras"].(mov=0) ifTrue:[	  UIManager inform: 'no hay movimientos' ]   			ifFalse:[		UIManager inform:  'Si hay movimientos'].