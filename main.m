function main()
    J = load('PB_data.mat');
    % x = load('PB12.mat.mat');
    x = [J.f1(J.phno == 2), J.f2(J.phno == 2)]
    
    for i=1:10
        [mu, s2, p] = mog(x, 6);

        mu
        s2
        p
        disp('Press a key to continue')
        pause;
        save('MoGVarsK6_p2.mat', 'mu', 's2', 'p')
    end
    
    % plot(J(:,1),J(:,2),'.')
