% Solve the following using Bisection Method
% 1. x^2 + y^2 = 25
% 2. e^x + y = 1

​% Define the system of equations as anonymous functions
f = @(vars) [vars(1)^2 + vars(2)^2 - 25;
             exp(vars(1)) + vars(2) - 1];

% Provide an initial guess for the solution
initial_guess = [1, 1];

% Use fsolve to solve the system of nonlinear equations
solution = fsolve(f, initial_guess);

% Display the solution rounded to 2 decimal points
x_solution = round(solution(1), 2);
y_solution = round(solution(2), 2);

fprintf('The solution is x = %.2f, y = %.2f\n', x_solution, y_solution);
