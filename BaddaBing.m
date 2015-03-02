function BaddaBing()
	basex = 0.5;
	basey = 0.5;
	basearea = 1;
	
	printf("Drawing first Square\n");

	drawSquare( basex, basey, basearea );
	drawBaddaBing( basex, basey, 0.25*basearea, 1 );
	drawBaddaBing( basex, basey, 0.25*basearea, 2 );
	drawBaddaBing( basex, basey, 0.25*basearea, 3 );
	drawBaddaBing( basex, basey, 0.25*basearea, 4 );
endfunction