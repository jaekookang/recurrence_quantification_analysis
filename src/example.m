% Cross Recurrence Plot example
% 2019-04-15 Jaekoo

%% Make data
sr = 400; F = 2; dur = 1; t = linspace(0,dur,sr)';
S1 = sin(F*2*pi*t); S2 = S1 .* exp(.005 * [length(S1):-1:1]');
S2 = S2(1:round(length(S2)*4/5));
CRP(S1,S2, 'MINLEN',2, 'RADIUS',.2, 'CLEAN',{@bwmorph,'skel',inf})

%% Plots during debugging
% Make a breakpoint at line 153 where 'find diagonals & lengths' begins

% Plot indices of nonzero diagonals
DD = zeros(prod(size(D)),1);
DD(fd(idx)) = 1;
ii = fd(idx);

