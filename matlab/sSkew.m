function [SS] = sSkew(S)
    w = S(1:3);
    v = S(4:6);
    
   SS = zeros(4);
   
   SS(1,1) =     0;
   SS(1,2) = -w(3);
   SS(1,3) =  w(2);
   SS(1,4) =  v(1);
   SS(2,1) =  w(3);
   SS(2,2) =     0;
   SS(2,3) = -w(1);
   SS(2,4) =  v(2);
   SS(3,1) = -w(2);
   SS(3,2) =  w(1);
   SS(3,3) =     0;
   SS(3,4) =  v(3);
   SS(4,1) =     0;
   SS(4,2) =     0;
   SS(4,3) =     0;
   SS(4,4) =     0;
end