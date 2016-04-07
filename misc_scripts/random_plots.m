tx = ty = linspace (-20, 20, 100)';
[xx, yy] = meshgrid (tx, ty);
# r = (xx .^ 2 + yy .^ 2 - 100) * cos(xx);
# tz = r;
r = sqrt (xx .^ 2 + yy .^ 2) + eps;
tz = sin (r) ./ r;
mesh (tx, ty, tz);