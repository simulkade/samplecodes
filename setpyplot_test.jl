using PyPlot, SetPyPlot
setrcparam()

figure()
x = collect(linspace(0, 2π, 100))
y1 = sin(x)
plot(x, sin(x), label = "sin(x)")
plot(x, cos(x), label = "cos(x)")
xlabel("x values")
ylabel("y values")
legend()
tight_layout()

gcf() # to plot in vscode

savefig("publication_test.png")