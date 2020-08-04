i=1
map=function(shots,TeamName)
{
  shotmap=ggplot(shots) +
    annotate_pitch(colour = "white",
                   fill   = "chartreuse4",
                   limits = FALSE) +
    geom_point(aes(x = x, y = 100 - y),
               colour = "yellow",
               size = 4)+
    theme_pitch() +
    theme(plot.background = element_rect(fill = "chartreuse4"),
          title = element_text(colour = "white")) +
    coord_flip(xlim = c(49, 101),
               ylim = c(-1, 101)) +
    ggtitle(TeamName,
            "Shotmap")
  print(shotmap)
}

TeamName="Liverpool"
while(i==1)
{
  cat("\n1...Liverpool Shot map\n2...Real Madrid Shotmap\n3...Barcelona Shot Map\n4...exit\nEnter choice")
  c=readline()
  if(c==1)
  {
    shots <- data.frame(x = c(60, 85, 82, 78, 83, 74, 94, 91),
                        y = c(43, 40, 52, 56, 44, 71, 60, 54))
    
    TeamName="Liverpool"
    map(shots,TeamName)
  }
  else if(c==2)
  {
    shots <- data.frame(x = c(78, 70, 84, 88, 81, 74, 96, 91),
                        y = c(57, 38, 45, 60, 70, 62, 60, 45))
    
    TeamName="Real Madrid"
    map(shots,TeamName)
  }
  else if(c==3)
  {
    shots <- data.frame(x = c(75, 67, 77, 88, 80, 90, 94, 91),
                        y = c(50, 40, 52, 65, 44, 61, 55, 54))
    
    TeamName="Barcelona"
    map(shots,TeamName)
  }
  else
    i=0
}
