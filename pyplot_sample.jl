# settings for pyplot
using PyPlot

# specify the sizes
tick_font_size = 10
legend_font_size = 10
axis_label_font_size = 10
fig_width = 8 # cm
fig_height = 6 # cm

# setting the font size of the axis tick labels
rc("xtick", labelsize=tick_font_size)
rc("ytick", labelsize=tick_font_size)
rc("legend", fontsize=legend_font_size)
rc("axes", labelsize=axis_label_font_size)
rc("figure", dpi = 300)
# rc("savefig", bbox = "tight")

# close all the open figures
close("all")

# setting the fig size
figure(figsize=(fig_width, fig_height)./2.54)

x = collect(linspace(0, 2π))
y1 = sin(x)
plot(x, sin(x), label = "sin(x)")
plot(x, cos(x), label = "cos(x)")
xlabel("x values")
ylabel("y values")
legend()
tight_layout()

gcf() # to plot in vscode

savefig("publication_test.png")