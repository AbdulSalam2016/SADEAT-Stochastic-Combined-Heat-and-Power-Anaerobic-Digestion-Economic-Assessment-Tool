function pd1 = FitFITS(FITS)
%CREATEFIT    Create plot of datasets and fits
%   PD1 = CREATEFIT(FITS)
%   Creates a plot, similar to the plot in the main distribution fitting
%   window, using the data that you provide as input.  You can
%   apply this function to the same data you used with dfittool
%   or with different data.  You may want to edit the function to
%   customize the code and this help message.
%
%   Number of datasets:  1
%   Number of fits:  1
%
%   See also FITDIST.

% This function was automatically generated on 12-Sep-2012 17:35:05

% Output fitted probablility distribution: PD1

% Data from dataset "FITS data":
%    Y = FITS

% Force all inputs to be column vectors
FITS = FITS(:);

% Prepare figure
clf;
hold on;

LegHandles = []; LegText = {};


% --- Plot data originally in dataset "FITS data"
[CdfF,CdfX] = ecdf(FITS,'Function','cdf');  % compute empirical cdf
BinInfo.rule = 1;
[~,BinEdge] = internal.stats.histbins(FITS,[],[],BinInfo,CdfF,CdfX);
[BinHeight,BinCenter] = ecdfhist(CdfF,CdfX,'edges',BinEdge);
hLine = bar(BinCenter,BinHeight,'hist');
% hLine2 = bar(BinCenter,BinHeight/sum(BinHeight)*100,'hist');

set(hLine,'FaceColor','none','EdgeColor',[0.333333 0 0.666667],...
    'LineStyle','-', 'LineWidth',1);
xlabel('Data');
ylabel('Density')

LegHandles(end+1) = hLine;
LegText{end+1} = 'FITS data';

% Create grid where function will be computed
XLim = get(gca,'XLim');
XLim = XLim + [-1 1] * 0.01 * diff(XLim);
XGrid = linspace(XLim(1),XLim(2),100);


% --- Create fit "fit 1"

% Fit this distribution to get parameter values
% To use parameter estimates from the original fit:
%     pd1 = ProbDistUnivParam('normal',[ 3887789.069562, 1315866.846527])
pd1 = fitdist(FITS, 'normal');

YPlot = pdf(pd1,XGrid);
hLine = plot(XGrid,YPlot,'Color',[1 0 0],...
    'LineStyle','-', 'LineWidth',2,...
    'Marker','none', 'MarkerSize',6);
LegHandles(end+1) = hLine;
LegText{end+1} = 'fit 1';

% Adjust figure
box on;
hold off;

% Create legend from accumulated handles and labels
hLegend = legend(LegHandles,LegText,'Orientation', 'vertical', 'Location', 'NorthEast');
set(hLegend,'Interpreter','none');

