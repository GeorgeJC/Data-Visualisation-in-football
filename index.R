t=0
while(t<1)
{
  cat("\n1....Manager mode\n2....Viewer Mode")
  cat("\nEnter Choice : ")
  choice=readline()
  choice=as.integer(choice)
  if(choice==2)
    source("viewer.R")
  else if(choice==1)
  {
    source("manager.R")
  }
  else if(choice==3)
    t=1
  else
    cat("\nPlease enter valid choice")
}