% Daniel Aguirre
% 2/24/2017

-module(assignment).
-export([perimeter/1,area/1,bits/1]).


%Shapes

perimeter({square, S}) ->
	4*S;
perimeter({rectangle, L, W}) ->
	2*L + 2*W;
perimeter({triangle, A, B, C}) ->
	A + B + C;
perimeter({circle, R}) ->
	2 * math:pi() * R;

%Simple "unknown shape" feedback, eg. perimeter({grapes, 1, 2, 3}). (Naive Edition):

perimeter({_Shape,_}) ->
	"Unrecognised shape";
perimeter({_Shape,_,_}) ->
	"Unrecognised shape";
perimeter({_Shape,_,_,_}) ->
	"Unrecognised shape".


area({triangle, B, H}) ->
	0.5 * B * H.


%Summing the bits

bits(0,0,Sum) ->
	Sum;
bits(0,1,Sum) ->
	Sum + 1;
bits(N,Rem,Sum) when N>0 ->
	bits(N div 2,N rem 2,Sum + Rem).

bits(N) ->
	bits(N,0,0).