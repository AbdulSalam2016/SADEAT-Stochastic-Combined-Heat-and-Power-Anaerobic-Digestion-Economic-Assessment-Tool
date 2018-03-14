function data = createData()

% Create the shared data-structure for this application
demoList = {
    'Welcome'                                  ''
    'Cases/Lifetime/Seed'                      '  :Please enter information about number of cases to simulate, project lifetime and the seed number for controlling stochastic behaviour'
    'Costs'                                    '  :Please edit with information about capital costs of building, machinery and initial year overhead costs'
    'Costs summary'                            '  :Please edit with further cost related information'
    'Prices and rates'                         '  :Please edit with information about prices and rates'
    'Feedstock'                                '  :Please edit with information about feedstock quantities (tonnes) and yield (m3/tonne). Also indicate assumed distributions of feedstock quantity and yield'
    'Energy conversion'                        '  :Please edit with information about energy conversion, efficiency, etc. Also indicate assumed distributions of these stochastic parameters'
    'Simulated data'                           '  :Showing results for the simulated data '
    'Income statement'                         '  :Showing results for annual income statement distributions '
    'Distribution'                             '  :Showing results for distribution of simulated indicator (i.e. NPV or breakeven electricity prices)'
    };

programTitle = {'Stochastic (Combined Heat and Power) Anaerobic Digestion Economic Assessment Tool'};

selectedDemo = 1;
data = struct( ...
    'DemoNames', {demoList(:,1)'}, ...
    'DemoInstruction', {demoList(:,2)'},...
    'SelectedDemo', selectedDemo,...
    'programTitle',programTitle);

end % createData