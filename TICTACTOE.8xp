ClrDraw
GridOff
AxesOff
0->E
int(2rand)->T
If T<1:Then
~1->T:End
0->I
Fill(0,[C])
{Xmin,(Xmax-Xmin)/3+Xmin,2(Xmax-Xmin)/3+Xmin,Xmax}->L1
{Ymin,(Ymax-Ymin)/3+Ymin,2(Ymax-Ymin)/3+Ymin,Ymax}->L2
L1+abs(L1(1)-L1(2))/2->L3
L2+abs(L2(1)-L2(2))/2->L4
abs((L2(1)-L2(2))/2->R
Line(L1(2),L2(4),L1(2),L2(1))
Line(L1(3),L2(4),L1(3),L2(1))
Line(L1(1),L2(3),L1(4),L2(3)
Line(L1(1),L2(2),L1(4),L2(2))
While E=0
	0->I
	While I=0
		getKey->I
	End
	T->L
	If T=1:Then
		If I=72 and [C](1,1)=0:Then
			1->[C](1,1)
			{L1(1),L1(2),L2(3),L2(4)}->L5
		~1->T:End
		If I=73 and [C](1,2)=0:Then
			1->[C](1,2)
			{L1(2),L1(3),L2(3),L2(4)}->L5
		~1->T:End
		If I=74 and [C](1,3)=0:Then
			1->[C](1,3)
			{L1(3),L1(4),L2(3),L2(4)}->L5
		~1->T:End
		If I=82 and [C](2,1)=0:Then
			1->[C](2,1)
			{L1(1),L1(2),L2(2),L2(3)}->L5
		~1->T:End
		If I=83 and [C](2,2)=0:Then
			1->[C](2,2)
			{L1(2),L1(3),L2(2),L2(3)}->L5
		~1->T:End
		If I=84 and [C](2,3)=0:Then
			1->[C](2,3)
			{L1(3),L1(4),L2(2),L2(3)}->L5
		~1->T:End
		If I=92 and [C](3,1)=0:Then
			1->[C](3,1)
			{L1(1),L1(2),L2(1),L2(2)}->L5
		~1->T:End
		If I=93 and [C](3,2)=0:Then
			1->[C](3,2)
			{L1(2),L1(3),L2(1),L2(2)}->L5
		~1->T:End
		If I=94 and [C](3,3)=0:Then
			1->[C](3,3)
			{L1(3),L1(4),L2(1),L2(2)}->L5
		~1->T:End
	End
	If T=~1 and T!=L:Then
		Line(L5(1),L5(4),L5(2),L5(3))
		Line(L5(1),L5(3),L5(2),L5(4))
	End
	If T=~1:Then
		If I=72 and [C](1,1)=0:Then
			~1->[C](1,1)
			{L3(1),L4(3),R}->L6
		1->T:End
		If I=73 and [C](1,2)=0:Then
			~1->[C](1,2)
			{L3(2),L4(3),R}->L6
		1->T:End
		If I=74 and [C](1,3)=0:Then
			~1->[C](1,3)
			{L3(3),L4(3),R}->L6
		1->T:End
		If I=82 and [C](2,1)=0:Then
			~1->[C](2,1)
			{L3(1),L4(2),R}->L6
		1->T:End
		If I=83 and [C](2,2)=0:Then
			~1->[C](2,2)
			{L3(2),L4(2),R}->L6
		1->T:End
		If I=84 and [C](2,3)=0:Then
			~1->[C](2,3)
			{L3(3),L4(2),R}->L6
		1->T:End
		If I=92 and [C](3,1)=0:Then
			~1->[C](3,1)
			{L3(1),L4(1),R}->L6
		1->T:End
		If I=93 and [C](3,2)=0:Then
			~1->[C](3,2)
			{L3(2),L4(1),R}->L6
		1->T:End
		If I=94 and [C](3,3)=0:Then
			~1->[C](3,3)
			{L3(3),L4(1),R}->L6
		1->T:End
	End
	If T=1 and T!=L
	Then
		Circle(L6(1),L6(2),L6(3))
	End
	If [C](1,1)=1 and [C](1,2)=1 and [C](1,3)=1 or [C](2,1)=1 and [C](2,2)=1 and [C](2,3)=1 or [C](3,1)=1 and [C](3,2)=1 and [C](3,3)=1 or [C](1,1)=1 and [C](2,1)=1 and [C](3,1)=1 or [C](1,2)=1 and [C](2,2)=1 and [C](3,2)=1 or [C](1,3)=1 and [C](2,3)=1 and [C](3,3)=1 or [C](1,1)=1 and [C](2,2)=1 and [C](3,3)=1 or [C](3,1)=1 and [C](2,2)=1 and [C](1,3)=1:Then
		1->E
	End
	If [C](1,1)=~1 and [C](1,2)=~1 and [C](1,3)=~1 or [C](2,1)=~1 and [C](2,2)=~1 and [C](2,3)=~1 or [C](3,1)=~1 and [C](3,2)=~1 and [C](3,3)=~1 or [C](1,1)=~1 and [C](2,1)=~1 and [C](3,1)=~1 or [C](1,2)=~1 and [C](2,2)=~1 and [C](3,2)=~1 or [C](1,3)=~1 and [C](2,3)=~1 and [C](3,3)=~1 or [C](1,1)=~1 and [C](2,2)=~1 and [C](3,3)=~1 or [C](3,1)=~1 and [C](2,2)=~1 and [C](1,3)=~1:Then
		~1->E
	End
	If [C](1,1)!=~0 and [C](1,2)!=~0 and [C](1,3)!=~0 and [C](2,1)!=~0 and [C](2,2)!=~0 and [C](2,3)!=~0 and [C](3,1)!=~0 and [C](3,2)!=~0 and [C](3,3)!=~0
	Then
		[e]->E
	End
End
ClrHome
If E=1:Then
	Disp "PLAYER X WINS!"
End
If E=~1:Then
	Disp "PLAYER O WINS!"
End
If E=[e]:Then
	Disp "DRAW!"
End
Pause 
ClrHome
