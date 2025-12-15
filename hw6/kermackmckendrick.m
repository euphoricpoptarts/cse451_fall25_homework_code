function dydt = kermackmckendrick(t, y, c, d)
  dydt = [-c*y(1)*y(2); c*y(1)*y(2) - d*y(2); d*y(2)];
end
