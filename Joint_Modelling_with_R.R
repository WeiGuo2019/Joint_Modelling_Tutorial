#####The models were fitted by using the following script.  
##### Separate analyses of longitudinal and survival data

### Longitudinal data analysis 

install.packages("nlme") 
library(nlme)

lme.fit <- lme(log(mdrd) ~ age.0 + fu + salford + male + smoking + alcohol + diabetes +     
                    mcp, random = ~ fu | ID, method = "ML", data = longitudinal.data)
summary(lme.fit)


### Survival data analysis 

## Cox model with time-varying covariate for RRT 
install.packages("survival")
library(survival)

tdep.rrt <- coxph(Surv(start, stop, rrt.event) ~ log(mdrd) + age.0 + salford + male +  
                       smoking + alcohol + diabetes + mcp, data = longitudinal.data)
summary(tdep.rrt)


##### Joint model

install.pacakges("JM")
library(JM)

## JointModel function in the JM package fits joint models. It requires the fitted objects of 
## separate longitudinal and survival (Cox proportional hazards model with baseline covariate) models. 

# RRT

lme.fit <- lme(log(mdrd) ~ age.0 + fu + salford + male + smoking + alcohol + diabetes +     
                    mcp, random = ~ fu | ID, method = "ML", data = longitudinal.data)
cox.rrt <- coxph(Surv(stime, rrt.event.ind) ~ age.0 + salford + male + 
                      smoking + alcohol + diabetes + mcp, data = survival.data, x = TRUE)



jm.rrt <- jointModel(lme1, cox.rrt, timeVar = "fu", method = "piecewise-PH-aGH", 
                        iter.EM = 150, verbose = T)
summary(jm.rrt)


