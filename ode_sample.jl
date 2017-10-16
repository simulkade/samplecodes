using DifferentialEquations, Plots

function rate(t, c, dc)
    kf = 1.0
    kb = 1.0
    r = kf*c[1]*c[2]-kb*c[3]
    dc[1] = -r
    dc[2] = -r
    dc[3] = r
end

c0 = [1.0; 0.9; 0.1]
tspan = (0.0,10)

prob = ODEProblem(rate,c0,tspan)
sol = solve(prob,CVODE_Adams())
plot(sol)
