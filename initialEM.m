function [E,M] =initialEM(a)
	[lc lr] =size(a) ;
	if lc ~= lr
		disp('input matrix error')
	    E = 0; M =0;
	    return
	else
		len = lc;
	end

	J = 1; sumE =0;
	for i = 1:len
		for j = 1:len
			sumE = sumE + (-J) * a(i,j) * a(mod(i,len)+1,j) + (-J) * a(i,j) * a(i,mod(j,len)+1);
	    end
	end
	M = sum(sum(a,1));
	E = sumE;
end	

	

