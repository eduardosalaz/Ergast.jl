using DataFrames
using Ergast
using Test

@testset "Ergast.jl" begin
    @testset "Drivers' data" begin
        @test nrow(GetDrivers(cons="ferrari", year="2020")) == 2
    end
end
