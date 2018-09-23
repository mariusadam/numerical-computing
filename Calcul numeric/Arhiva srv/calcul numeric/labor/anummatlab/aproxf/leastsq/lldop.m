%grafice polinoame Legendre
n=4; clf
t=(-1:0.01:1)';
s=[];
ls={':','-','--','-.'};
lw=[1.5,0.5,0.5,0.5];
for k=1:n
    y=vLegendre(t,k);
    s=[s;strcat('\itn=',int2str(k))];
    plot(t,y,'LineStyle',ls{k},'Linewidth',lw(k),'Color','k'); 
    hold on
end
legend(s,4)
xlabel('t','FontSize',12,'FontAngle','italic')
ylabel('L_k','FontSize',12,'FontAngle','italic')
title('polinoame Legendre','Fontsize',14);
text(-0.65,0.8,'LLDOP')