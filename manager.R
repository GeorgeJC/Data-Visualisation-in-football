r=0
while(r<1)
{
  cat("\n1...Create starting 11\n2...Compare Players\n3...Exit\nEnter Choice:-")
  c=readline()
  if(c==1)
    source("dream11.R")
  else if(c==3)
    r=1
  else if(c==2)
    source("radar.R")
}