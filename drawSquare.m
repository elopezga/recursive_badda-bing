function drawSquare(x,y,a)
	w = sqrt(a);
	r = rectangle( 'Position', [x, y, w, w] ); #note: x and y indicates lower left position
	set( r, 'FaceColor', [0,0,0] );
endfunction