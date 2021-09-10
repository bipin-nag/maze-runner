Graphics[Line[Accumulate[RandomChoice[{-1, 1}, {1000, 2}]]]]

ArrayPlot[FoldList[ReplacePart[#, #2 -> 1]&, Table[0, {30}], RandomSample[
    Range[30], 30]]]

Flatten[RandomChoice[{0.35, 0.65} -> {#, {}}]& /@ Range[10]]