function [x,y,z1,z2,z3,z4] = confplot(projectLifetime,var)

plotScale = 1000;
var = var/plotScale;
x = 1:1:projectLifetime;

for i = 1:1:projectLifetime
    y(i) = mean(var(:,i));
    SEM = std(var(:,i))/sqrt(length(var(:,i)));              % Standard Error
    CI = mean(var(:,i)) + [-1.96 1.96]*SEM;
    %  [~,~,CI,~] = normfit(var(:,i));
    
    z1(i) = CI(1);
    z2(i) = CI(2);
    z3(i) = max(var(:,i));
    z4(i) = min(var(:,i));
    
end

end