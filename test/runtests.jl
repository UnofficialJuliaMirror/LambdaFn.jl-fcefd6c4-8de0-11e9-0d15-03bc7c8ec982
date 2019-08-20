using LambdaFn
using Test

@testset "LambdaFn" begin
    @test @λ(_ + _)(1,2) == 3
    @test @λ(_a + _b*_a)(3,2) == 9
    @test @λ(_1 - _2)(10,5) == 5
    @test @λ(_2 - _1)(10,5) == -5
    @test @λ(_a - _b)(10,5) == 5
    @test @λ(_b - _a)(10,5) == 5
    @test @λ(_1 - _3)(5,1,5) == 0
    @test_throws Exception @eval(@λ(_ + _1))
    @test_throws Exception @eval(@λ(_ + _a))
    @test_throws Exception @eval(@λ(_1 + _a))
end
