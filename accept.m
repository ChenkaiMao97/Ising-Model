function [accept,sum] = prob(a,i,j,list)
	sum =0;
	len = size(a,1);
	sum = 2*a(i,j)*(a(mod(i,len)+1,j)+a(i,mod(j,len)+1)...
		           +a(mod(i-2,len)+1,j)+a(i,mod(j-2,len)+1));
    switch sum
    	case -8
    		accept = true;
    		return
    	case -4
    		accept = true;
    		return
    	case -0
    		accept = true;
    		return
    	case 4
    		pro = list(1);
    	case 8
    		pro = list(2);
    	otherwise
    		disp('error');
    end
    if pro >= rand()
    	accept =true;
    else
    	accept = false;
    end
end