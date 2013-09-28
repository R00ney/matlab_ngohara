
V_1 = [  ]
V_2 = []
V_3 = []

I = []

for(i = 1:9)
   repeatability(i) = 1 - (...
                        (max(V_1(i),V_2(i),V_3(i)) - ...
                        min(V_1(i),V_2(i),V_3(i)) ) / ...
                        (max(I) - min(I) ) );
                        
end