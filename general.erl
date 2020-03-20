%%%-------------------------------------------------------------------
%%% @author edith
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Mar 2020 22:06
%%%-------------------------------------------------------------------
-module(general).
-author("edith").

%% API
-export([reverse/1, find/2, delete/2, flatten/1, square/1, square2/1, square3/1, filter1/2]).

reverse([]) -> [];
reverse([X|Xs]) -> reverse(Xs) ++ [X].


find(_, []) -> not_found;
find(X, [X|_]) -> {found, X};
find(X, [_|Tail]) -> find(X, Tail).

delete(_,[]) -> [];
delete(X, [X|Tail]) -> Tail;
delete(X, [H|Tail]) ->[H] ++ delete(X,Tail).

flatten([]) -> [];
flatten([Xs|Ys]) -> Xs ++ flatten(Ys).

square([]) -> [];
square([X|Ys]) -> [X*X] ++ square(Ys).

square2(Alist) -> [X*X || X <- Alist].

square3(Xs) -> lists:map(fun(X) -> X*X end, Xs).

filter1(_, []) -> [];
filter1(F, [X|Xs]) ->
  case F(X) of
    true -> [X|filter1(F, Xs)] ;
    false -> filter1(F, Xs)
  end.