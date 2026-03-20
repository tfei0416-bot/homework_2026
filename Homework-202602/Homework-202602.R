
#费婷婷 SA25008195

setwd("D:/Myclass/Homework-202602")

# =========================
# Task 1: 查找、安装、查看 tidyverse
# =========================
#1 查找包
available_pkgs <- rownames(available.packages())
"tidyverse" %in% available_pkgs
#2 安装包
install.packages("tidyverse", repos = "https://cloud.r-project.org")
#3 查看包
library(tidyverse)
packageVersion("tidyverse")
help(package = "tidyverse")

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

