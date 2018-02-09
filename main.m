function main = main(dimention)
    J = 1; beita =1/5;
    a = randspin(dimention);
    % a = ones(dimention,dimention);
    [E_ini,M_ini] = initialEM(a);
    E = E_ini; M = M_ini;
    E_history = E;
    disp('E =');disp(E);disp('M =');disp(M);
    list = [exp(-beita*(4)) exp(-beita*(8))];
	for  iter1 = 1:200
		for iter2 = 1: 10*dimention^2    
	    	i = ceil(rand()*dimention);
	    	j = ceil(rand()*dimention);
	    	[change,deltaE] = accept(a,i,j,list);
	    	if change
	    		E = E+deltaE;
	    		M_ini = M_ini+(-2)*a(i,j);
	    		a(i,j) = -a(i,j);
	    	end
	    end	
	    E_history =[E_history,E];
	    disp('iter1');disp(iter1);
	    imagesc(a);
	    pause;
	end
	main = E_history;
end



