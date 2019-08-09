using Distributed
include("data.jl")
c=carrier.*30
d=data.*30
N=length(c)

result=Array{Float64}(undef, N)

function test()
	@sync @distributed for i = 1:length(c)
	    @inbounds result[i]=c[i]*d[i]
	end
end

@time test()
@time test()
@time test()
@time test()
@time test()
@time test()
@time test()
@time test()
@time test()
@time test()
@time test()
