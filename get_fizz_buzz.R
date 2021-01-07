library(tidyverse)

# Version without inputs
fizz_buzz <- function(number){
  output <- ""
  if (number %% 3 == 0) {output <- paste0(output, "FIZZ")} 
  if (number %% 5 == 0) {output <- paste0(output, "BUZZ")}
  if (output == "") {output <- as.character(number)}
  
  return(output)
}

map_chr(seq(1:100), fizz_buzz)

# Version with inputs
fizz_buzz_complex <- function(number, number_a, number_b, word_a, word_b){
  output <- ""
  if (number %% number_a == 0) {output <- paste0(output, word_a)} 
  if (number %% number_b == 0) {output <- paste0(output, word_b)}
  if (output == "") {output <- as.character(number)}
  
  return(output)
}

map_chr(seq(1:100), ~ fizz_buzz_complex(.x, 3, 5, "GODDAMN ", "BATMAN"))
