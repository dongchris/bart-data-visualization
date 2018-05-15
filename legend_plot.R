library(plotrix)
plot(1:20,seq(-20,20,length=20),type="n",xlab="",ylab="", xaxt='n', yaxt='n', bty='n')

# radius based on 75%, 50%, 25% percentiles of ridership data
draw.circle(10,0,c( 10.791/8, 5.808/8, 3.349/8, 1/8),border="#4fab5b",
            col=c("white","white","white"),lty=1,lwd=2)
text(11,2, '-----25%', cex = 0.65)
text(11.85,-5, '-------75%', cex = 0.65)
text(11.5,-1, '------- 50%', cex = 0.65)
text(10,15, 'Bart Traffic by Percentile')

