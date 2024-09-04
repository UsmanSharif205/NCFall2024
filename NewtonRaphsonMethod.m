function [Xs, i] = NewtonRoot(Fun,FunDer,Xest,Err,imax)
% NewtonRoot finds the root of Fun = 0 near the point Xest using Newton's method.
% Input variables:
% Fun Handle of a user-defined function that calculates Fun for a given x.
% FunDir Handle of a user-defined function that calculates the derivative
% of Fun for a given x.
% Xest Initial estimate of the solution.
% Err Maximum error.
% imax Maximum number of iterations
% Output variable:
% Xs Solution
for i = 1:imax
Xi = Xest - Fun(Xest)/FunDer(Xest);
if abs((Xi - Xest)/Xest) < Err
Xs = Xi;
break
end
Xest = Xi;
end
if i == imax
fprintf('Solution was not obtained in %i iterations.\n',imax)
Xs = ('No answer');
end

function newton
F = @ (x) 8-4.5*(x-sin(x));
dF= @ (x) -4.5*(1-cos(x));
x0=2.0;
err=1.0e-4;
imax=10;
[sol, iter]=NewtonRoot(F,dF,x0,err,imax);
disp(sol);
disp(iter);
