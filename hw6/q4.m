f = @(t,y) kermackmckendrick(t,y,1,5);
ode45(f, [0 1], [95; 5; 0]);
xlabel("Time");
ylabel("Population");
% all this BS to eliminate the huge margins around the saved figure
set(gcf, 'PaperPosition', [0 0 5 5]);
set(gcf, 'PaperSize', [5 5]);
saveas(gcf, 'hw6q4_base', 'pdf');
close(gcf);

f = @(t,y) kermackmckendrick(t,y,.1,10);
ode45(f, [0 1], [95; 5; 0]);
xlabel("Time");
ylabel("Population");
% all this BS to eliminate the huge margins around the saved figure
set(gcf, 'PaperPosition', [0 0 5 5]);
set(gcf, 'PaperSize', [5 5]);
saveas(gcf, 'hw6q4_nogrowth', 'pdf');
close(gcf);


f = @(t,y) kermackmckendrick(t,y,2,8);
ode45(f, [0 1], [90; 10; 0]);
xlabel("Time");
ylabel("Population");
% all this BS to eliminate the huge margins around the saved figure
set(gcf, 'PaperPosition', [0 0 5 5]);
set(gcf, 'PaperSize', [5 5]);
saveas(gcf, 'hw6q4_plagueinc', 'pdf');
close(gcf);
