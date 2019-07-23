%% Bubble sorting lists
-module(sorting).
-export([bubble_sort/1, bubble_sort/4]).

bubble_sort(Array) ->
    bubble_sort(Array, [], 1, length(Array)).

bubble_sort(L, New_array, Start, Original_length) ->
    io:format("The array to sort is ~p~npartly sorted ~p~nStart is ~p~n----------------------------------~n", [L, New_array, Start]),

    case Start of
	_ when Start < Original_length; Start =:= Original_length -> 
	    case L of
		[F, N | T] when F > N -> bubble_sort([F] ++ T, New_array ++ [N], Start, Original_length);
		[F, N | T] when N > F -> bubble_sort([N] ++ T, New_array ++ [F], Start, Original_length);
		[F | []] ->bubble_sort([], New_array ++ [F], Start, Original_length);
		[] -> bubble_sort(New_array, [], Start + 1, Original_length)
	    end;
	_ -> io:format("The sorted array is ~p~nSTART ~p~n", [New_array, Start])
    end.
