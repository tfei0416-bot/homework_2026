
#费婷婷 SA25008195

setwd("D:/Myclass/Homework-202602")

# =========================
# Task 1: 查找、安装并查看 tidyverse
# 查看包（函数、数据、文档）
# =========================

# 1. 查找包：检查 CRAN 上是否有 tidyverse
available_pkgs <- rownames(available.packages())
"tidyverse" %in% available_pkgs

# 2. 安装包：如果尚未安装，可运行此语句
install.packages("tidyverse", repos = "https://cloud.r-project.org")

# 3. 加载包
library(tidyverse)

# 4. 查看 tidyverse 包的帮助文档
help(package = "tidyverse")

# 5. 查看 tidyverse 包含的核心包
tidyverse_packages()

# =========================
# 查看包中的函数
# =========================

# tidyverse 是元包，常用函数主要来自其核心子包
# 这里以 dplyr 为例查看函数
library(dplyr)
ls("package:dplyr")

# 也可以查看其他核心包中的函数
library(tidyr)
ls("package:tidyr")

library(ggplot2)
ls("package:ggplot2")

# =========================
# 查看帮助文档
# =========================

# 查看某个函数的帮助文档
?dplyr::filter
help(filter, package = "dplyr")

# 查看函数的参数
args(dplyr::filter)

# 查看某个包的帮助文档
help(package = "dplyr")
help(package = "ggplot2")

# =========================
# 查看数据集
# =========================

# 查看 tidyverse 相关包中的数据集
data(package = "tidyverse")
data(package = "dplyr")
data(package = "ggplot2")

# 查看 ggplot2 中的 diamonds 数据集
data("diamonds", package = "ggplot2")
head(diamonds)
str(diamonds)
summary(diamonds)

# 查看数据集帮助文档
?diamonds
help("diamonds", package = "ggplot2")

# =========================
# Task 2A: 用 for 循环检查阈值
# =========================
set.seed(123)
x <- rnorm(n = 10, mean = 35, sd = 10)

check_above_threshold <- function(x, threshold = 35) {
  result <- logical(length(x))
  
  for (i in seq_along(x)) {
    result[i] <- x[i] > threshold
  }
  
  return(result)
}

x

check_above_threshold(x, threshold = 35)

result_df <- data.frame(
  value = x,
  above_35 = check_above_threshold(x, 35)
)

print(result_df)

# =========================
# Task 2B: 用 sapply 检查阈值
# =========================
check_above_threshold_apply <- function(x, threshold = 35) {
  sapply(x, function(value) value > threshold)
}

x
check_above_threshold_apply(x, threshold = 35)

result_df <- data.frame(
  value = x,
  above_35 = check_above_threshold(x, 35)
)

print(result_df)

