f=@(x) x.^2./(1-x.^2);
m=51;
X=linspace(-1,1,500)';
Y=f(X);
x_nodes=ceb_node1(m,-1,1);
L_Y=baryLagrange(x_nodes,f(x_nodes),X);
plot(X,Y,X,L_Y);