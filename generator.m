d = 32; 
width = height = d; 
EX = Table[{i, j} <-> {i + 1, j}, {i, width}, {j, width}]; 
EY = Table[{i, j} <-> {i, j + 1}, {i, width}, {j, width}]; 
p = 0.5; 
q = 0.6; 
Ex = RandomChoice[{p, 1 - p} -> {#, {}}]& /@ Flatten @ EX; 
Ex = Cases[Except[{}]][Ex]; 
Ey = RandomChoice[{q, 1 - q} -> {#, {}}]& /@ Flatten @ EY; 
Ey = Cases[Except[{}]][Ey]; 
g = Graph[Join[Ex, Ey]]; 
walls =
    Table[
        {
            If[EdgeQ[g, {i, j} <-> {i + 1, j}],
                {}
                ,
                {Line[{{i + .5, j + .5}, {i + .5, j - .5}}]}
            ]
            ,
            If[EdgeQ[g, {i, j} <-> {i - 1, j}],
                {}
                ,
                {Line[{{i - .5, j + .5}, {i - .5, j - .5}}]}
            ]
            ,
            If[EdgeQ[g, {i, j} <-> {i, j + 1}],
                {}
                ,
                {Line[{{i - .5, j + .5}, {i + .5, j + .5}}]}
            ]
        }
        ,
        {i, width}
        ,
        {j, height}
    ]; 
Graphics[walls]