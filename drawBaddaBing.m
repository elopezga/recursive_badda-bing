function drawBaddaBing(x,y,a,corner)
	#Implement corner to the drawSquare call
	printf("Deciding corner...\n");
	#NOTE: "tl" = 1
	#	"tr" = 2
	#	"br" = 3
	#	"bl" = 4
	if (corner == 1)
		x = x-sqrt(a);
		y = y+2*sqrt(a);
	elseif (corner == 2)
		x = x+2*sqrt(a);
		y = y+2*sqrt(a);
	elseif (corner == 3)
		x = x+2*sqrt(a);
		y = y-sqrt(a);
	else
		# The corner == 4 case
		x = x-sqrt(a);
		y = y-sqrt(a);
	endif

	printf("Drawing smaller square\n");

	drawSquare(x,y,a); # First call to this function should have halfed area since initial square should be drawn before this call.
	if (a <= .0001 ) # This is the area threshold
		printf("Is the base case working?\n");
		return;
	endif
	
	# Recursion begins here
	if( corner != 3 )
		printf("Drawing in tl\n");
		drawBaddaBing(x,y,0.25*a, 1);
	endif

	if( corner != 4 )
		printf("Drawing in tr\n");
		drawBaddaBing(x,y,0.25*a, 2);
	endif

	if( corner != 1 )
		printf("Drawing in br\n");
		drawBaddaBing(x,y,0.25*a, 3);
	endif

	if( corner != 2 )
		printf("Drawing in bl\n");
		drawBaddaBing(x,y,0.25*a, 4);
	endif
	
endfunction