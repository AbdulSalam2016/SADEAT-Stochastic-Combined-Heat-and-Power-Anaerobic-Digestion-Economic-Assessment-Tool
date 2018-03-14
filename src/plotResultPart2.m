function plotResultPart2(gui,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,annualCost,projectLifetime)

[x,y,z1,z2,z3,z4] = confplot(projectLifetime,annualRevenue);
plot(gui.R1C1Result2,x,y,'-b',x,z1,'--r',x,z2,'--r',x,z3,'-g',x,z4,'-g');  xlabel(gui.R1C1Result2,'Year'); ylabel(gui.R1C1Result2,'Annual revenue, £ ,000'); xlim(gui.R1C1Result2,[0 projectLifetime+0.5])

[x,y,z1,z2,z3,z4] = confplot(projectLifetime,annualCost);
plot(gui.R1C2Result2,x,y,'-b',x,z1,'--r',x,z2,'--r',x,z3,'-g',x,z4,'-g');  xlabel(gui.R1C2Result2,'Year'); ylabel(gui.R1C2Result2,'Annual cost, £ ,000'); xlim(gui.R1C2Result2,[0 projectLifetime+0.5])

[x,y,z1,z2,z3,z4] = confplot(projectLifetime,preTaxProfit);
plot(gui.R1C3Result2,x,y,'-b',x,z1,'--r',x,z2,'--r',x,z3,'-g',x,z4,'-g');  xlabel(gui.R1C3Result2,'Year'); ylabel(gui.R1C3Result2,'Annual pre-tax profit, £ ,000'); xlim(gui.R1C3Result2,[0 projectLifetime+0.5])



[x,y,z1,z2,z3,z4] = confplot(projectLifetime,tax);
plot(gui.R2C1Result2,x,y,'-b',x,z1,'--r',x,z2,'--r',x,z3,'-g',x,z4,'-g');  xlabel(gui.R2C1Result2,'Year'); ylabel(gui.R2C1Result2,'Annual tax, £ ,000'); xlim(gui.R2C1Result2,[0 projectLifetime+0.5])

[x,y,z1,z2,z3,z4] = confplot(projectLifetime,postTaxProfit);
plot(gui.R2C2Result2,x,y,'-b',x,z1,'--r',x,z2,'--r',x,z3,'-g',x,z4,'-g');  xlabel(gui.R2C2Result2,'Year'); ylabel(gui.R2C2Result2,'Annual post-tax profit, £ ,000'); xlim(gui.R2C2Result2,[0 projectLifetime+0.5])

[x,y,z1,z2,z3,z4] = confplot(projectLifetime,cashFlow);
plot(gui.R2C3Result2,x,y,'-b',x,z1,'--r',x,z2,'--r',x,z3,'-g',x,z4,'-g');  xlabel(gui.R2C3Result2,'Year'); ylabel(gui.R2C3Result2,'Annual cashflow, £ ,000'); xlim(gui.R2C3Result2,[0 projectLifetime+0.5])

end