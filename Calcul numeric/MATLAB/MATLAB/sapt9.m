t=(1900:10:2010)';
y=[75995,91972,105710,123200,131670,150700,179320,203210,226510,249630,281420,308790]';
x=(1890:1:2019)';
w=[1975,2015];
%c=polyfit(t,y,3);
mt=mean(t);
st=std(t);
s=(t-mt)/st;
xs=(x-mt)/st;
cs=polyfit(s,y,3)
zs=polyval(cs,xs);
est=polyval(cs,(w-mt)/st)
%rep grafica
plot(t,y,'o',x,zs,w,est,'*')
for i=1:length(w)
    text(w(i),est(i)-20,num2str(est(i)))
end
title('US Population','Fontsize',14)
xlabel('year','Fontsize',12)
ylabel('Millions','Fontsize',12)


