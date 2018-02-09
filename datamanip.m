function [mean,variance] = datamanip(a)
	len = length(a);
	mean = sum(a)/len;
	variance = sum(a.^2)/len-mean^2;
	b = sqrt(variance)/mean;
	disp('mean = ');disp(mean);
	disp('variance = ');disp(variance);
	disp('sqrt(variance)/mean = ');disp(b);
end
