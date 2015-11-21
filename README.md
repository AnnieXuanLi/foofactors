This is a the [Homework8](http://stat545-ubc.github.io/hw10_package.html) package for [STAT 545](http://stat545-ubc.github.io).

This is built on the demo Jenny posted for students to consult / start with for their homework. There are two functions created by Jenny, `fbind` and `freq_out`. Two new functions that are created by Annie Li, `is_char` and `fac`, have been added to the package.

Here's how to use the `foofactors` package.

``` r
#install_github("AnnieXuanLi/foofactors")
library(foofactors)
```

`fbind`
-------

### Description

Create a new factor from two existing factors, where the new factor's levels are the union of the levels of the input factors.

### Examples

``` r
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: ctrl setosa trt1 trt2 versicolor virginica
fbind(factor(c(1,3,5)), factor(c(2,4,6)))
#> [1] 1 3 5 2 4 6
#> Levels: 1 2 3 4 5 6
fbind(factor(c("a","b","c")), factor(c("d","f","e")))
#> [1] a b c d f e
#> Levels: a b c d e f
```

`freq_out`
----------

### Description

Make a frequency table for a factor

### Examples

``` r
freq_out(iris$Species)
#> Source: local data frame [3 x 2]
#> 
#>            x     n
#>       (fctr) (int)
#> 1     setosa    50
#> 2 versicolor    50
#> 3  virginica    50
```

`is_char`
---------

### Description

Detect factors that should be character because \# unique values = length

### Examples

``` r
is_char(factor(c("a", "b", "c", "d")))
#> [1] TRUE
is_char(factor(c(1, 3, 5, 4, 1, 6)))
#> [1] FALSE
```

`fac`
-----

### Description

Turn a vector to a factor and set levels to the order in which they appear in the data

### Examples

``` r
fac(c("a", "c", "b", "e"))
#> [1] a c b e
#> Levels: a c b e
fac(c(3, 2, 5, 1, 1, 1, 6))
#> [1] 3 2 5 1 1 1 6
#> Levels: 3 2 5 1 6
fac(c("a", "c", "d", "b", "b", "c"))
#> [1] a c d b b c
#> Levels: a c d b
```
