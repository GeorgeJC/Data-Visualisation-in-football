a=0
while(a<1)
{
  cat("\n1...View team season stats\n2...compare players\n3...EPL history\n4...Shotmap\n5...Predict Score\n6...exit viewer mode\nEnter choice")
  c=readline()
  if(c==6)
    a=3
  else if(c==2)
    source("radar.R")
  else if(c==1)
    source("teamanalysis.R")
  else if(c==3)
    source("epl.R")
  else if(c==4)
    source("passmap.R")
  else if(c==5)
  {
    library(reticulate)
    source_python("heat.py")
  }
}