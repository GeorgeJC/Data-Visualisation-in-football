leicester = c(1,12,9,9,4)
arsenal = c(2,5,6,5,3)
tottenham = c(3,2,3,4,9)
manchester_city = c(4,3,1,1,2)
manchester_united = c(5,6,2,6,12)
southampton=c(6,8,17,16,17)
westham=c(7,11,13,10,8)
liverpool=c(8,4,4,2,1)
chelsea=c(9,1,5,3,5)
season = c(2015,2016,2017,2018,2019)
plot(season,leicester,col="blue",ylim=rev(c(1,20)),type="l",ylab="League Position",xlab="Seaon")
lines(season,arsenal,col="red",ylim=rev(c(1,20)),type="l")
lines(season,tottenham,col="purple",ylim=rev(c(1,20)),type="l")
lines(season,manchester_city,col="brown",ylim=rev(c(1,20)),type="l")
lines(season,manchester_united,col="orange",ylim=rev(c(1,20)),type="l")
lines(season,southampton,col="black",ylim=rev(c(1,20)),type="l")
lines(season,westham,col="green",ylim=rev(c(1,20)),type="l")
lines(season,liverpool,col="gray",ylim=rev(c(1,20)),type="l")
lines(season,chelsea,col="cyan",ylim=rev(c(1,20)),type="l")
teams=c("Leicester","Arsenal","Tottenham","Manchester City","Manchester United","Southampton","Westham","Liverpool","Chelsea")
legend("bottomleft",teams,cex=0.8,fill=c("blue","red","purple","brown","orange","black","green","gray","cyan"))
