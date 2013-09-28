
close
clear

n = [8, 12, 16, 32, 64];
sht = (2e6)^-1 * 2.^n;
sht = sht.^-1 * 2;

step = 10 ./ n;

%find 2v step
for(k=1:5)
    for(i=0:64)
       if(i*step(k) >= 2) 
            break
       end
    end
    num2v(k) = i-1;
end

%find 5v step
for(k=1:5)
    for(i=0:64)
       if(i*step(k) >= 5) 
            break
       end
    end
    num5v(k) = i-1;
end

timeConvert = (num5v - num2v) .* (2e6)^-1
