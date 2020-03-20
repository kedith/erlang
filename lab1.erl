%%%-------------------------------------------------------------------
%%% @author edith
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%% Implementation of max and min funtions with different approaches.
%%% @end
%%% Created : 16. Mar 2020 19:49
%%%-------------------------------------------------------------------
-module(lab1).
-author("edith").

%% API
-export([max/1, min/1]).

max([X|Ys]) -> maxi(Ys,X).

maxi([],Max) -> Max;
maxi([X|Rest],Max) ->
  if X >= Max -> maxi(Rest,X);
     X < Max -> maxi(Rest,Max)
  end.

min([H|T]) -> mini(T,H).

mini([H|T], Min) when H < Min -> mini(T,H);
mini([_|T], Min)              -> mini(T,Min);
mini([],    Min)              -> Min.