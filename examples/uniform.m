data = RandomVariate[UniformDistribution[{1, 3}], 10^4]

Show[Histogram[data, 20, "PDF"], Plot[PDF[UniformDistribution[{1, 3}],
     x], {x, 0, 3}, PlotStyle -> Thick]]