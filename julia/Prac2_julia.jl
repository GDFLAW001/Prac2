#!/usr/bin/env julia

include("data.jl")
using BenchmarkTools
c=carrier.*30
d=data.*30
result=[]
function test()
	for i = 1:length(c)
	    push!(result,c[i]*d[i])
	end
end

println(@benchmark test())