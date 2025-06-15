# Joint_Modelling_Tutorial
Özgür Asar, James Ritchie, Philip A Kalra, Peter J Diggle, **Joint modelling of repeated measurement and time-to-event data: an introductory tutorial**, International Journal of Epidemiology, Volume 44, Issue 1, February 2015, Pages 334–344,
Software for the separate analysis of longitudinal and survival data is widely available. For the results reported in this paper, we used the R packages nlme and survival for longitudinal and survival data analysis, respectively. Software for joint modelling is becoming increasingly available in statistical packages, for example in the R packages JM, joineR and JMbayes. **The R scripts for the analyses reported in this paper are provided as following**.

# Online supplementary material: R scripts              

We have two data sets, one for the longitudinal data and one for the survival data, named as longitudinal.data and survival.data in R, respectively. The explanations of the variable names of these data sets are given below:

- mdrd: eGFR measurements                
-	age.0: baseline age
-	fu: follow-up
-	salford: base hospital
-	male: gender
-	smoking: smoking status
-	alcohol: alcohol consumption
-	diabetes: diabetic conditions
-	mcp: co-morbidity
-	stime: survival time
-	rrt.event.ind: event indicator variable for RRT
-	start: the follow-up time at which the measurements are taken
-	stop: the sub-sequent follow-up time of start, but the last value is the survival time 
-	rrt.event: time varying event indicator for RRT for each start stop intervals
