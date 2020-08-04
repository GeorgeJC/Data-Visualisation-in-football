
data=read.csv("C:\\Users\\george joseph\\Documents\\Sem-5\\Data Visualisation\\Project\\Player Stats 2017-18.csv")
cat("\nEnter team name :")
tn=readline()
team=data[data$Team==tn,c('Player','Appearances','Goals','Assists')]
tmp=0
while(tmp<1)
{
  cat("\n1...Goals Contribution\n2...Assist Contribution\n3...Appearances View\n4...Exit\nEnter choice")
  ch=readline()
  if(ch==1)
  {
    total=sum(team$Goals)
    goaldat=team[(team$Goals>4),c('Player','Goals')]
    tot2=sum(goaldat$Goals)
    others=total-tot2
    player=as.vector(goaldat$Player)
    player=c(player,'Others')
    player=player[-1]
    goalbyplayer=as.vector(goaldat$Goals)
    goalbyplayer=c(goalbyplayer,others)
    goalbyplayer=goalbyplayer[-1]
    p <- plot_ly(labels = player, values = goalbyplayer, type = 'pie') %>%
      layout(title = 'Goals contributed in Domestic League')
    print(p)
  }
  else if(ch==2)
  {
    
    total=sum(team$Assists)
    asdat=team[(team$Assists>4),c('Player','Assists')]
    tot2=sum(asdat$Assists)
    others=total-tot2
    player=as.vector(asdat$Player)
    player=c(player,'Others')
    player=player[-1]
    asbyplayer=as.vector(asdat$Assists)
    asbyplayer=c(asbyplayer,others)
    asbyplayer=asbyplayer[-1]
    p <- plot_ly(labels = player, values = asbyplayer, type = 'pie') %>%
      layout(title = 'Assists contributed in Domestic League')
    print(p)
  }
  else if(ch==3)
  {
    total=sum(team$Appearances)
    asdat=team[(team$Appearances>15),c('Player','Assists')]
    tot2=sum(asdat$Appearances)
    others=total-tot2
    player=as.vector(asdat$Player)
    player=c(player,'Others')
    player=player[-1]
    asbyplayer=as.vector(asdat$Appearances)
    asbyplayer=c(asbyplayer,others)
    asbyplayer=asbyplayer[-1]
    p <- plot_ly(labels = player, values = asbyplayer, type = 'pie') %>%
      layout(title = 'Appearances contributed in Domestic League')
    print(p)
  }
  else if(ch==4)
    tmp=1
}
