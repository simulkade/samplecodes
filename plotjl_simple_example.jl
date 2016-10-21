using Plots
plot(rand(100,5), layout=4)
x=collect(linspace(0,10,100))
y=sin(x)
plot(plot(x, y), plot(x,x.*y), plot(x,x.*y.*y))
