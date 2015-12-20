rankall <- function(outcome, num = "best") {
  ## Read outcome data
  outcome_file <- 'outcome-of-care-measures.csv'
  outcome.df <- read.csv(file=outcome_file, colClasses = "character")
  
  outcome.split <- split(outcome.df, outcome.df$State)

  column.num <- 0
  column.num <- ifelse (outcome == "heart attack", 11,
                  ifelse(outcome == "heart failure", 17,
                    ifelse(outcome == "pneumonia", 23, 0)))
  if (column.num == 0) {
    stop("invalid outcome")
  }
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  result <- sapply(outcome.split, function(outcome.state) {
    outcome.state[, column.num] <- as.numeric(outcome.state[, column.num])
    outcome.state.sort <- outcome.state[order(outcome.state$Hospital.Name),]
    outcome.state.order <- order(outcome.state.sort[, column.num], na.last=NA)
    num <- ifelse(num == "best", 1, ifelse(num == "worst", length(outcome.state.order), num))
    ret <- ifelse(num <= length(outcome.state.order), 
                  outcome.state.sort[outcome.state.order[num],]$Hospital.Name,
                  NA)
    return(ret)
  })
  state.name <- names(outcome.split)
  rankall.df <- data.frame(hospital=result, state=state.name)
  rankall.df
}