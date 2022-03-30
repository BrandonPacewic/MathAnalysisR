library(ggplot2, json)

df <- data.frame(
    x=c(
        119, 111, 85, 59, 108, 
        111, 122, 81, 55, 30, 
        27, 42, 77, 65, 82, 
        86, 101, 48, 46, 22
    ),
    y=c(
        21262, 20435, 12918, 10969, 7983, 
        7956, 4533, 4138, 3766, 2834, 
        2565, 2489, 2322, 2321, 2289, 
        2245, 2135, 1909, 807, 722
    )
)

png(file = "scatter.png", width = 1500, height = 1080, units = "px")

ggplot(df, aes(x=x, y=y)) + 
    geom_point(col="green", size=2) + 
    geom_smooth(method=lm, col="red", linetype="dashed") + 
    labs(
        x="Years of Car Manufacturing", y="Fatal Car Crashes Every Three Years"
    ) +
    theme_bw()

dev.off()