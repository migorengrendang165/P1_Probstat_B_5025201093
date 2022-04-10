# 1
# a
x = 3
p = 0.20
dgeom(x, p)
# b
n = 10000
set.seed(1)
mean(rgeom(n, p) == 3)
# d
set.seed(1)
hist(rgeom(n, p), main = 'Histogram Distribusi Geometrik')
# e
set.seed(1)
mean(rgeom(n, p))
var(rgeom(n, p))

# 2
n = 20
p = 0.20
# a
x = 4
dbinom(x, n, p)
# b
set.seed(1)
hist(rbinom(x, n, p), main = 'Distribusi Binomial')
# c
set.seed(1)
mean(rbinom(x, n, p))
var(rbinom(x, n, p))

# 3
lambda = 4.5
# a
x = 6
dpois(x, lambda)
# b
n = 365
set.seed(1)
hist(rpois(n, x), main = 'Distribusi Poisson')
# d
set.seed(1)
mean(rpois(n, lambda))
var(rpois(n, lambda))

# 4
x = 2
v = 10
# b
n = 100
set.seed(1)
hist(rchisq(n, v), main = 'Distribusi Chi-Square')
# c
set.seed(1)
mean(rchisq(n, v))
var(rchisq(n, v))

#5
x = 3
# b
set.seed(1)
hist(rexp(10, x), main = 'Distribusi Eksponensial 10 Data')
hist(rexp(100, x), main = 'Distribusi Eksponensial 100 Data')
hist(rexp(1000, x), main = 'Distribusi Eksponensial 1000 Data')
hist(rexp(10000, x), main = 'Distribusi Eksponensial 10000 Data')
# c
set.seed(1)
mean(rexp(100, 3))
var(rexp(100, 3))

# 6
n = 100
mean = 50
sd = 8
# a
set.seed(1)
rnorm(n, mean, sd)
mean(rnorm(n, mean, sd))
x1 = 49
x2 = 50
z1 = (x1 - mean(rnorm(n, mean, sd)))/sd(rnorm(n, mean, sd))
z1
z2 = (x2 - mean(rnorm(n, mean, sd)))/sd(rnorm(n, mean, sd))
z2
plot(rnorm(n, mean, sd), main = "Plot Data Generate Random")
#b
set.seed(1)
hist(rnorm(n, mean, sd), main = '5025201093_Hafizh Mufid Darussalam_Probstat_B_DNhistogram', breaks = 50)
#c
set.seed(1)
var(rnorm(n, mean, sd))
