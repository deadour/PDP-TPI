|arreglo arr movimiento c cj i j x x1 x2 unJugador band |arreglo:= Array new: 4.arreglo at:1 put:(Array new:4).arreglo at:2 put:(Array new:4).arreglo at:3 put:(Array new:4).arreglo at:4 put:(Array new:4).(arreglo at:1) at:1 put:'3'.(arreglo at:1) at:2 put:'2'.(arreglo at:1) at:3 put:'2'.(arreglo at:1) at:4 put:'0'.(arreglo at:2) at:1 put:'0'.(arreglo at:2) at:2 put:'1'.(arreglo at:2) at:3 put:'2'.(arreglo at:2) at:4 put:'0'.(arreglo at:3) at:1 put:'0'.(arreglo at:3) at:2 put:'1'.(arreglo at:3) at:3 put:'2'.(arreglo at:3) at:4 put:'0'.(arreglo at:4) at:1 put:'0'.(arreglo at:4) at:2 put:'1'.(arreglo at:4) at:3 put:'1'.(arreglo at:4) at:4 put:'4'.i:= 3.j:= 2. c := ((arreglo at:i)at:j). Transcript show: 'El numero es: ', c.