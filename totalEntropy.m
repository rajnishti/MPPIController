function [entropy] = totalEntropy(Sk , del_uk)
    n = length(Sk);
    lamda = 1;
    sum1 = 0;
    sum2 = 0;
    for i = 1:n
        
        sum1 = sum1 + exp(-(1/lamda)*Sk(i))*del_uk(i);
        sum2 = sum2 + exp(-(1/lamda)*Sk(i));
    end
    if(sum1 == 0 && sum2 ==0)
           return; 
        end
    entropy = sum1/sum2;
%     sum1 = sum1
%     sum2 = sum2
end