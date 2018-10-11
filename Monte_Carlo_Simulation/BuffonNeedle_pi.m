%Monte Carlo simulation (pi stimation)
%Jorge Guzman Nader
%CBEE 102
%02/15/2018
%This function calculate an stimate for pi, based in the Monte Carlo
%derivation.



function piValue = BuffonNeedle_pi(N)

    
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
        
        
        % Count how many needles intersect a line and how many do not
        numCross = cross + numCross;
        noCross = N - numCross;
        

        % Return the probability that a needle intersects a line
        probability = numCross / N;

    end
    
     %Calculates PI = 2* needle length/(distance between grids * probobility)
     piValue = 2*N/numCross;
    
      
end

