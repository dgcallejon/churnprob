Churn_prob_function <- function(y, x){
  churnfunction <- glm(Exited ~ CreditScore + Gender + Age + Tenure + Balance +
                         NumOfProducts + HasCrCard + IsActiveMember + EstimatedSalary, data=y,
                       family="binomial")

  y <- y[, Churnprob := predict(churnfunction, y, type="response")]

  result <- y[CustomerId %in% x, list(Churnprob)]

  if(x %in% y$CustomerId){
    return(result)
  } else {
    print("Error")
  }
}

