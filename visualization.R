myplot <- function(z, who=1:10) {
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot(FreeThrows)
myplot(FreeThrowAttempts)

#1. Free Throw Attempts / Game
myplot(FreeThrowAttempts/Games)

#2. Free Throw Accuracy
myplot(FreeThrows/FreeThrowAttempts)

#3. Player Style Patterns Excl. Free Throws
myplot((Points-FreeThrows)/FieldGoals)

# Field Goal Accuracy
myplot(FieldGoals/FieldGoalAttempts)

#Salary
myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoals)

#In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#Interesting Observation
myplot(MinutesPlayed/Games)
myplot(Games)

#Time is valuable
myplot(FieldGoals/MinutesPlayed)

#Player Style
myplot(Points/FieldGoals)
