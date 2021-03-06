
data11=read.csv("C:\\Users\\george joseph\\Documents\\Sem-5\\Data Visualisation\\Project\\fifa19new.csv")
t=0
forma=function(players,pcol)
{
  form=ggplot(players) +
    annotate_pitch(colour = "white",
                   fill   = "green3",
                   limits = FALSE) +  geom_point(aes(x = x, y = 100 - y),
                                                 colour = pcol ,
                                                 size = 7)+
    theme_pitch()+theme(plot.background = element_rect(fill = "black"),
                        title = element_text(colour = "white"))
  print(form)
}
cat("\nWelcome to dream team creator")
cat("\nChoose Formation: ")
cat("\n1..4-3-3\n2..4-2-4\n3...5-3-2")
f=readline()
if(f==1)
{
  players <- data.frame(x = c(5, 22, 22, 22, 22, 45, 55, 45,75,80,75),
                        y = c(50,80, 60, 40, 20, 70, 50, 30,20,50,80))
  pcol=c("red","orange","orange","orange","orange","yellow","yellow","yellow","blue","blue","blue")
  forma(players,pcol)
}
if(f==2)
{
  players <- data.frame(x = c(5, 22, 22, 22, 22, 50, 50, 75,80,80,75),
                        y = c(50,80, 60, 40, 20, 65, 35, 15,40,60,85))
  pcol=c("red","orange","orange","orange","orange","yellow","yellow","blue","blue","blue","blue")
  forma(players,pcol)
}
if(f==3)
{
  players <- data.frame(x = c(5, 30, 22, 22, 22,30, 50, 60, 50,80,80),
                        y = c(50,90, 70, 50, 30,10, 35, 50, 65,40,60))
  pcol=c("red","orange","orange","orange","orange","orange","yellow","yellow","yellow","blue","blue")
  forma(players,pcol)
}
cat("\nChoose starting 11")
cat("\n1..Advanced search\n2..manual entry")
final=data11[data11$Club==" ",c('Name','Position','Overall')]
c=readline()
if(c==1)
{
  count=1
  while(count<=11)
    {
      cat("\nChoose minimum overall:")
      mindef=readline()
      cat("\nEnter Position of player:-")
      pos=readline()
      cat("\nChoose current team ofplayer:")
      curt=readline()
      pic=data11[((data11$Position==pos) & (data11$Overall>mindef) & (data11$Club==curt)),c('Name','Position','Overall')]
      df=1
      print(pic)
      cat("\nEnter name to be added=")
      dc=readline()
      final=rbind(final,pic[pic$Name==dc,c('Name','Position','Overall')])
      print(final)
      cat("\nExit?")
      ce=readline()
      if(ce==1)
      {
        count=11
      }
      count=count+1
    }
  cat("\nYour Team is as follows:-\n")
  print(final)
  cat("\nAverage Overall of your Team=\n")
  print(mean(final$Overall))
  
}
if(c==2)
{
  cou=1
  while(cou<=11)
  {
    cat("\nEnter player name to be added")
    nm=readline()
    final=rbind(final,data11[data11$Name==nm,c('Name','Position','Overall')])
    cat("\nPlayer Added\n")
    cat("\nPress1 to exit")
    exe=readline()
    if(exe==1)
      cou=11
    cou=cou+1;
    cat("\nYour Team is as follows:-\n")
    print(final)
    cat("\nAverage Overall of your Team=\n")
    print(mean(final$Overall))
  }
}