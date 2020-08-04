players <- data.frame(x = c(5, 22, 22, 22, 22, 45, 55, 45,75,80,75),
                      y = c(50,80, 60, 40, 20, 70, 50, 30,20,50,80))
pcol=c("red","orange","orange","orange","orange","yellow","yellow","yellow","blue","blue","blue")

form=ggplot(players) +
  annotate_pitch(colour = "white",
                 fill   = "green3",
                 limits = FALSE) +  geom_point(aes(x = x, y = 100 - y),
                                 colour = pcol,
                                 size = 7)+
  theme_pitch()+theme(plot.background = element_rect(fill = "black"),
                      title = element_text(colour = "white"))
print(form)