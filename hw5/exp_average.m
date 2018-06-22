function out = exp_average(in, bin)
    persistent call;
    persistent outp;
    persistent b;
    if(isempty(call))
        call = 0; end;
        
    if(nargin == 1 && call == 0) b = 0.1; out = in; 
    elseif(nargin == 1) out = b * in + (1 - b)*outp; 
    elseif(nargin == 2) b = bin; out = in; 
    end;
    
    call = call + 1;        
    outp = out;