library(zoo)

az <- zoo(1:6)
az

bz <- zoo(c(2,NA,1,4,5,2))
class(bz)


na.locf(bz)

b=na.locf(bz, fromLast = TRUE)
b

b1=na.locf(bz, fromLast = FALSE)
b1

b2=(b+b1)/2
b2

class(b2)

cz <- zoo(c(3,4,6,NA,NA,9,12))
cz

c0 = na.locf(cz, fromLast = TRUE)
c1 = na.locf(cz, fromLast = FALSE)

c0

c1

c=(c0 + c1)/2

c

dz <- zoo(c(NA,4,6,7,NA,9,12))
dz

d0 = na.locf(dz, fromLast = TRUE)
d1 = na.locf(dz, fromLast = FALSE)

d0

d1

d=(d0 + d1)/2

d
