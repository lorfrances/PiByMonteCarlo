function CountCircle(BoundX, BoundY)
    CountInCircle = 0
    for i in 1:N # for all sample
        # randomly select an x and y coordinate
        PosX = rand(BoundX[1]:Precision:BoundX[2])
        PosY = rand(BoundY[1]:Precision:BoundY[2])
        # determine if the sample is in the unit circle
        Dist = PosX^2 + PosY^2
        if Dist <= 1
            CountInCircle = CountInCircle +1
        end
    end
    EstimatePi = 4*CountInCircle/N 
    return EstimatePi
end
    
# inputs 
BoundX = [-1,1]
BoundY = [-1,1]

# number of sample 
const Precision = 1e-5 # precision for the number generator 
const N = 1e6

@time EstimatePi = CountCircle(BoundX, BoundY)
println(EstimatePi)
