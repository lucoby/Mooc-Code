tx = ty = linspace (-10, 10, 50)';
[xx, yy] = meshgrid (tx, ty);
r = xx + yy .^ 2;
tz = r;
mesh (tx, ty, tz);