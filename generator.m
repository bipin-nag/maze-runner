d = 32

width = height = d

EX = Table[{i, j} <-> {i + 1, j}, {i, width}, {j, width}]

EY = Table[{i, j} <-> {i, j + 1}, {i, width}, {j, width}]

p = 0.40

q = 0.60

Ex = RandomChoice[{p, 1 - p} -> {#, {}}]& /@ Flatten @ EX

Ex = Cases[Except[{}]][Ex]

Ey = RandomChoice[{q, 1 - q} -> {#, {}}]& /@ Flatten @ EY

Ey = Cases[Except[{}]][Ey]

g = Graph[Join[Ex, Ey]]

walls =
    Table[
        {
            If[EdgeQ[g, {i, j} <-> {i + 1, j}],
                {Line[{{i, j}, {i + 1, j}}]}
                ,
                {}
            ]
            ,
            If[EdgeQ[g, {i, j} <-> {i, j + 1}],
                {Line[{{i, j}, {i, j + 1}}]}
                ,
                {}
            ]
        }
        ,
        {i, width}
        ,
        {j, height}
    ]; 

Graphics[walls]