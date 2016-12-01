function [x_class, Perr] = classify()
    phoneme_1 = load('MoGVarsK3.mat');
    phoneme_2 = load('MoGVarsK3_p2.mat');

    J = load('PB_data.mat');
    % x = load('PB12.mat.mat');
    x = [J.f1(J.phno == 1), J.f2(J.phno == 1)];

    x1_min = min(J.f1)
    x1_max = max(J.f1)
    x2_min = min(J.f2)
    x2_max = max(J.f2)

    x = [linspace(x1_min, x1_max, 20)', linspace(x2_min, x2_max, 20)'];

    [p1, d1] = liklihood(x, phoneme_1);
    [p2, d2]= liklihood(x, phoneme_2);

    x_class = mean(p1, 2) > mean(p2, 2)
    y_class = mean(p1, 2) <= mean(p2, 2)
    Perr = (0.5*sum(p1(x_class).*d1(x_class)))+(0.5*sum(p2(~x_class).*d2(~x_class)));
    x_class + y_class'




function [Px, d] = liklihood(x, phoneme)
    [n D] = size(x);
    k = size(phoneme.mu, 2);
    Px = zeros(n, k);
    d = zeros(n, k);
    p = phoneme.p;
    mu = phoneme.mu;
    s2 = phoneme.s2;

    for i=1:k
        Px(:,i) = p(i)*det(s2(:,:,i))^(-0.5)*exp(-0.5*sum((x'-repmat(mu(:,i),1,n))'*inv(s2(:,:,i)).*(x'-repmat(mu(:,i),1,n))',2));
        d(:,i) = abs(sum((x'-repmat(mu(:,i),1,n))));
    end

    %Z = sum(Z, 2) / k;
    %Px = mean(Px);

