datarad=read.csv("C:\\Users\\george joseph\\Documents\\Sem-5\\Data Visualisation\\Project\\fifa19new.csv")
rad=datarad[c('Name','Finishing','Dribbling','SprintSpeed','ShortPassing','StandingTackle')]
cat("\nEnter name of player 1 :")
p1=readline()
cat("\nEnter name of player 2 :")
p2=readline()
cmp=rad[(rad$Name==p1),c('Finishing','Dribbling','SprintSpeed','ShortPassing','StandingTackle')]
cmp=rbind(cmp,rad[(rad$Name==p2),c('Finishing','Dribbling','SprintSpeed','ShortPassing','StandingTackle')])
pc1=c(cmp$Finishing[1],cmp$Dribbling[1],cmp$SprintSpeed[1],cmp$ShortPassing[1],cmp$StandingTackle[1])
pc2=c(cmp$Finishing[2],cmp$Dribbling[2],cmp$SprintSpeed[2],cmp$ShortPassing[2],cmp$StandingTackle[2])
p=plot_ly(type = 'scatterpolar',fill = 'toself') %>% add_trace(r = pc1,theta = c('Shoot','Movement','Pace', 'Passing','Defence'),name = p1) %>% add_trace(r = pc2,theta=c('Shoot','Movement','Pace', 'Passing','Defence'),name = p2) %>% layout(polar = list(radialaxis =list(visible = T,range = c(0,100))))
print(p)