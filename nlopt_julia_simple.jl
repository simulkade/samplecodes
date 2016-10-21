# NLopt example in Julia
# I copied it from an stackoverflow response
# I don't remember the link; sorry!

using NLopt
function objective_function(param::Vector{Float64}, grad::Vector{Float64})
    obj_func_value = param[1]^2 + param[2]^2 + 1.0
    println("Objective func value = " * string(obj_func_value))
    println("Parameter value = " * string(param))
    return(obj_func_value)
end
opt1 = Opt(:LN_COBYLA, 2)
lower_bounds!(opt1, [-10.0, -10.0])
upper_bounds!(opt1, [10.0, 10.0])
ftol_rel!(opt1, 0.5)
ftol_abs!(opt1, 0.5)
min_objective!(opt1, objective_function)
(fObjOpt, paramOpt, flag) = optimize(opt1, [9.0, 9.0])
