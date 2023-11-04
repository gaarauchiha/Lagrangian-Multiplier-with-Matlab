z = [-20; -30];  % Maximize 20x+30y

constraints = [13, 19; 20, 29];  % constraints
const_2 = [2400; 2100];  % inequality constraints

x_coef = [1, 0];  
x_val = 10;  % x >= 10

lower_bounds = [0; 0];  % x>= 0 , y>=0

[x, ~, exitflag] = linprog(z, constraints, const_2, x_coef, x_val, lower_bounds);

if exitflag == 1
    disp(['# X per week: ', num2str(x(1))]);
    disp(['# Y per week: ', num2str(x(2))]);
else
    disp('Diverges');
end