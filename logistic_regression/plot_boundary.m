function plot_boundary(x,theta)
    hold on
    % Save indexes for min and max values as well as the values
    [max_x1, max_ind] = max(x(:,2));
    [min_x1, min_ind] = min(x(:,2));
    max_x2 = max(x(:,3));
    min_x2 = min(x(:,3));

    max_x1=max_x1 + 1;
    min_x1=min_x1 - 1;

    % Rearange the hypothetis equation in terms of x2
    x2 = -(theta(2)*x(:,2)+theta(1))/theta(3)

    % modify this:
    y1 = x2(min_ind);
    % modify this:
    y2 = x2(max_ind);
    
    
    plot([min_x1,max_x1],[y1,y2],'-')
    xlabel('x1')
    ylabel('x2')
    
    %END OF FUNCTION
