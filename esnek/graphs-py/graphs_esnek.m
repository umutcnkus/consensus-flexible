time = out.tout;

uout1 = out.uncontrolled1;
uout2 = out.uncontrolled2;
uout3 = out.uncontrolled3;
uout4 = out.uncontrolled4;

ccout1 = out.controlled1;
ccout2 = out.controlled2;
ccout3 = out.controlled3;
ccout4 = out.controlled4;

eu1 = sqrt(sum(out.uncontrolled1(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
cu1 = sqrt(sum(out.controlled1(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
e1 = 100 - cu1/eu1*100;

eu2 = sqrt(sum(out.uncontrolled2(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
cu2 = sqrt(sum(out.controlled2(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
e2 = 100 - cu2/eu2*100;

eu3 = sqrt(sum(out.uncontrolled3(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
cu3 = sqrt(sum(out.controlled3(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
e3 = 100 - cu3/eu3*100;


eu4 = sqrt(sum(out.uncontrolled4(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
cu4 = sqrt(sum(out.controlled4(floor(length(out.uncontrolled1)/5):length(out.uncontrolled1)).^2)/(0.75*length(out.uncontrolled1)));
e4 = 100 - cu4/eu4*100;


control1 = out.control1;
control2 = out.control2;
control3 = out.control3;
control4 = out.control4;

ftotal1 = rms(control1)
ftotal2 = rms(control2)
ftotal3 = rms(control3)
ftotal4 = rms(control4)


T = array2table([ftotal1 ototal1 ntotal1; ftotal2 ototal2 ntotal2; ftotal3 ototal3 ntotal3; ftotal4 ototal4 ntotal4], ...
'RowNames', {'Ajan 1', 'Ajan 2', 'Ajan 3', 'Ajan 4'}, ...
'VariableNames', {'F', 'O', 'N'})
