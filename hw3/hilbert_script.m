warning("off","all");
for i=1:15
  [res, err, c] = hilbertError(i);
  % format for latex table
  fprintf("%i & %.3g & %.3g & %.3g & %.1f\\\\ \n", i, res, err, c, -log10(err));
end
