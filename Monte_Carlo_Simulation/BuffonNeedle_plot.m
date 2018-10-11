%Monte Carlo simulation (Plot and cartoon)
%Jorge Guzman Nader
%CBEE 102
%02/15/2018
%This function display a needle drop simulation and output a window showing
%the quantity of needles that touched the line in red and the ones that did
%not in blue, it also display the numerical probability that a needle
%crosses the line


function piValue = BuffonNeedle_plot(N)

    
    % Run the simulations
    
    %Set the counter for times that the needles cross the line
    numCross = 0;
    
    %loop dropping needles
    for idx = 1:N
        
        %Create first point in the line
        x1 = 10* rand(1);
        y1 = 10* rand(1);

        % Set the angle
        theta = 2*pi * rand(1);

        % Create the second point
        x2 = x1 + cos(theta);
        y2 = y1 + sin(theta);

        % Check if a needle intersects a line
        cross = floor(x1) ~= floor(x2);
        

        %Color needle red when needle intersects line
        if floor(x1) ~= floor(x2)
            plot([x1, x2], [y1, y2], 'red')
            hold on
        %Color needle blue when needle do not intersects line
        else
            plot([x1, x2], [y1, y2], 'blue')
            hold on
        end
        
        
        % Count how many needles intersect a line and how many do not
        numCross = cross + numCross;
        noCross = N - numCross ;
        
        % Return the probability that a needle intersects a line
        probability = numCross / N;

    end
     %message box indicating the number of needles that hit or not the line
     h = msgbox(sprintf('This window show the values pertaining to the needles cartoon when 100 needles are drop\n(Red)The number of needles crossing is %2.3g\n(Blue)The number of needles not crossing is %2.3g\nThe probability of a needdle crossing the line is %2.3g\n',numCross, noCross, probability))

    %Calculates PI = 2* needle length/(distance between grids * probobility)
    piValue = 2*N/numCross;


    % Plot the vertical lines grid that will serve as boundaries
    % for the needles
    for line_idx = -1:11
        plot( [line_idx,line_idx], [-1,11], 'black')
        hold on
    end
    
    %Plot title and labels
    title('Monte Carlo Distribution simulation')
    %legend('Hit ','red', 'No hit','blue')
    
    %When the script is executed 'figure' make the 2 windows output from
    %the functions be able to display, wihout overlap eachother
    figure 
     
end



