%%%_* Types ===================================================================
-type fn(A)          :: fun(() -> A).

-type fn(A, B)       :: fun((A) -> B).

-type fn(A, B, C)    :: fun((A, B) -> C).

-type either(A, B)   :: {error, A} | {ok, B}.

-type maybe(A)       :: {ok, A} | error.

-type applicative(A) :: [A]
                        | either(_, A)
                        | maybe(A).

-type functor(A)     :: [A]
                        | #{_ := A}
                        | fn(_, A)
                        | either(_, A)
                        | maybe(A).

-type monad(A)       :: [A]
                        | either(_, A)
                        | maybe(A).

%%%_* Emacs ===================================================================
%%% Local Variables:
%%% allout-layout: t
%%% erlang-indent-level: 2
%%% End: