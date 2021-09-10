d = 32

width = height = d

LX = Table[Line[{{i, j}, {i + 1, j}}], {i, width}, {j, width}]

LY = Table[Line[{{i, j}, {i, j + 1}}], {i, width}, {j, width}]

p = 0.40

q = 0.60

Lx = RandomChoice[{p, 1 - p} -> {#, {}}]& /@ Flatten @ LX

Ly = RandomChoice[{q, 1 - q} -> {#, {}}]& /@ Flatten @ LY

Graphics[Join[Lx, Ly]]