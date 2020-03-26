clc
clear all

n = input('Enter a number: ');
ans = fact(n);
disp(sprintf('Factorial: %d',ans));

function f = fact(a)
	f = 1;
	if a>1
		f = a*fact(a-1);
	end
end
