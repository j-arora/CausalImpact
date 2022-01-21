# Load data
data = read.csv('2020AppDownloads_vf.csv')

# Show the data
par(cex = 1.3)
matplot(data, type = 'l', lwd = 3)
abline (v = 70)

# Define time periods w.r.t the change 
pre.period <- c(1,366)
post.period <- c(367, 456)
data$Day <- NULL

# Apply CausalImpact package on the data
library(CausalImpact)
impact <- CausalImpact(data, pre.period, post.period)
print(impact)
summary(impact, "report")
