clc
clear all
sentence = input('Enter the sentence: ');
freq = containers.Map;
for i = sentence
	if double(i) >= 65 && double(i) <= 90
		i = char(double(i)+32);
	end
	if freq.isKey(i)
		freq(i) = freq(i) + 1;
	else
		freq(i) = 1;
	end
end
for i = 97:122
	if ~freq.isKey(char(i))
		freq(char(i)) = 0;
	end
		disp(sprintf('%c -> %d',char(i),freq(char(i))))
end
f = [];
lece = {};
for i = 1:26
	f(i) = freq(char(i+96));
	lece{i} = char(i+96);
end
plot(1:26,f), grid off;
xlabel('Letters');ylabel('Frequency');
xticks(1:26);
xticklabels(lece);
yticks(0:max(f));
title('Frequency of letters');
