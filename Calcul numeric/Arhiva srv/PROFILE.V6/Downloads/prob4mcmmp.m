t = (1900:10:2010)';
y = [75.995, 91.972, 105.710, 123.200, 131.670, 150.700, 179.320, 203.210, 226.510, 249.630, 281.420, 308.790]';
x = (1890:1:2019)';
w = [1975, 2015];
c = polyfit(t, y, 3);
mt = mean(t);
st = std(t);
s = (t - mt) / st;
xs = (x - mt) / st;
% coeficienti
cs = polyfit(s, y, 3);
my_cs = mcmmpd(s, y, 3);
% estimare populatie
zs = polyval(cs, xs);
est = polyval(cs, (w - mt)/st);
% repr
plot(t, y, 'o', x, zs, w, est, '*');
for i = 1:length(w)
    text(w(i), est(i) - 20, num2str(est(i)));
end
title('US Population', 'Fontsize', 14);
xlabel('year', 'Fontsize', 12);
ylabel('milions', 'Fontsize', 12);
