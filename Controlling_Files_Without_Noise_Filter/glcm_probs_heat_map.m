for k = 21
    cdata3 = glcm_prob_gb_0(:,:,k);
    figure1 = figure('Colormap',...
    [1 1 1;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 0.9375;0.125 1 0.875;0.1875 1 0.8125;0.25 1 0.75;0.3125 1 0.6875;0.375 1 0.625;0.4375 1 0.5625;0.5 1 0.5;0.5625 1 0.4375;0.625 1 0.375;0.6875 1 0.3125;0.75 1 0.25;0.8125 1 0.1875;0.875 1 0.125;0.9375 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0]);
    % Create axes
    axes1 = axes('Parent',figure1);
    hold(axes1,'on');

    % Create image
    image(cdata3,'Parent',axes1,'CDataMapping','scaled');

    % Create xlabel
    xlabel({'Reference Pixel Values'},'FontSize',16);

    % Create ylabel
    ylabel({'Neighbouring Pixel Values'},'FontSize',16);

    % Uncomment the following line to preserve the X-limits of the axes
    xlim(axes1,[0 63]);
    % Uncomment the following line to preserve the Y-limits of the axes
    ylim(axes1,[0 63]);
    box(axes1,'on');
    grid(axes1,'on');
    axis(axes1,'ij');
    % Set the remaining axes properties
    set(axes1,'CLim',[0 0.04],'FontName','Cambria','FontSize',16,'Layer','top',...
        'TickDir','out','TickLength',[0.02 0.01],'XMinorTick','on','XTick',...
        [0 10 20 30 40 50 60],'YMinorTick','on','YTick',[0 10 20 30 40 50 60]);

end


%%
for k = 20
    cdata3 = glcm_prob_psh_0(:,:,k);
figure1 = figure('Colormap',...
    [1 1 1;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 0.9375;0.125 1 0.875;0.1875 1 0.8125;0.25 1 0.75;0.3125 1 0.6875;0.375 1 0.625;0.4375 1 0.5625;0.5 1 0.5;0.5625 1 0.4375;0.625 1 0.375;0.6875 1 0.3125;0.75 1 0.25;0.8125 1 0.1875;0.875 1 0.125;0.9375 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0]);

    % Create axes
    axes1 = axes('Parent',figure1);
    hold(axes1,'on');

    % Create image
    image(cdata3,'Parent',axes1,'CDataMapping','scaled');

    % Create xlabel
    xlabel({'Reference Pixel Values'},'FontSize',16);

    % Create ylabel
    ylabel({'Neighbouring Pixel Values'},'FontSize',16);

    % Uncomment the following line to preserve the X-limits of the axes
    xlim(axes1,[0 63]);
    % Uncomment the following line to preserve the Y-limits of the axes
    ylim(axes1,[0 63]);
    box(axes1,'on');
    grid(axes1,'on');
    axis(axes1,'ij');
    % Set the remaining axes properties
    set(axes1,'CLim',[0 0.04],'FontName','Cambria','FontSize',16,'Layer','top',...
        'TickDir','out','TickLength',[0.02 0.01],'XMinorTick','on','XTick',...
        [0 10 20 30 40 50 60],'YMinorTick','on','YTick',[0 10 20 30 40 50 60]);
end

%%
for k = 20
    cdata3 = glcm_prob_sfh_berea_0(:,:,k);
figure1 = figure('Colormap',...
    [1 1 1;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 0.9375;0.125 1 0.875;0.1875 1 0.8125;0.25 1 0.75;0.3125 1 0.6875;0.375 1 0.625;0.4375 1 0.5625;0.5 1 0.5;0.5625 1 0.4375;0.625 1 0.375;0.6875 1 0.3125;0.75 1 0.25;0.8125 1 0.1875;0.875 1 0.125;0.9375 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0]);

    % Create axes
    axes1 = axes('Parent',figure1);
    hold(axes1,'on');

    % Create image
    image(cdata3,'Parent',axes1,'CDataMapping','scaled');

    % Create xlabel
    xlabel({'Reference Pixel Values'},'FontSize',16);

    % Create ylabel
    ylabel({'Neighbouring Pixel Values'},'FontSize',16);

    % Uncomment the following line to preserve the X-limits of the axes
    xlim(axes1,[0 63]);
    % Uncomment the following line to preserve the Y-limits of the axes
    ylim(axes1,[0 63]);
    box(axes1,'on');
    grid(axes1,'on');
    axis(axes1,'ij');
    % Set the remaining axes properties
    set(axes1,'CLim',[0 0.04],'FontName','Cambria','FontSize',16,'Layer','top',...
        'TickDir','out','TickLength',[0.02 0.01],'XMinorTick','on','XTick',...
        [0 10 20 30 40 50 60],'YMinorTick','on','YTick',[0 10 20 30 40 50 60]);
end

%%
for k = 20
    cdata3 = glcm_prob_yc_0(:,:,k);
figure1 = figure('Colormap',...
    [1 1 1;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 0.9375;0.125 1 0.875;0.1875 1 0.8125;0.25 1 0.75;0.3125 1 0.6875;0.375 1 0.625;0.4375 1 0.5625;0.5 1 0.5;0.5625 1 0.4375;0.625 1 0.375;0.6875 1 0.3125;0.75 1 0.25;0.8125 1 0.1875;0.875 1 0.125;0.9375 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0]);

    % Create axes
    axes1 = axes('Parent',figure1);
    hold(axes1,'on');

    % Create image
    image(cdata3,'Parent',axes1,'CDataMapping','scaled');

    % Create xlabel
    xlabel({'Reference Pixel Values'},'FontSize',16);

    % Create ylabel
    ylabel({'Neighbouring Pixel Values'},'FontSize',16);

    % Uncomment the following line to preserve the X-limits of the axes
    xlim(axes1,[0 63]);
    % Uncomment the following line to preserve the Y-limits of the axes
    ylim(axes1,[0 63]);
    box(axes1,'on');
    grid(axes1,'on');
    axis(axes1,'ij');
    % Set the remaining axes properties
    set(axes1,'CLim',[0 0.04],'FontName','Cambria','FontSize',16,'Layer','top',...
        'TickDir','out','TickLength',[0.02 0.01],'XMinorTick','on','XTick',...
        [0 10 20 30 40 50 60],'YMinorTick','on','YTick',[0 10 20 30 40 50 60]);
end

%%
for k = 1:40
    cdata3 = glcm_prob_yh_0(:,:,k);
figure1 = figure('Colormap',...
    [1 1 1;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 0.9375;0.125 1 0.875;0.1875 1 0.8125;0.25 1 0.75;0.3125 1 0.6875;0.375 1 0.625;0.4375 1 0.5625;0.5 1 0.5;0.5625 1 0.4375;0.625 1 0.375;0.6875 1 0.3125;0.75 1 0.25;0.8125 1 0.1875;0.875 1 0.125;0.9375 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0]);

    % Create axes
    axes1 = axes('Parent',figure1);
    hold(axes1,'on');

    % Create image
    image(cdata3,'Parent',axes1,'CDataMapping','scaled');

    % Create xlabel
    xlabel({'Reference Pixel Values'},'FontSize',16);

    % Create ylabel
    ylabel({'Neighbouring Pixel Values'},'FontSize',16);

    % Uncomment the following line to preserve the X-limits of the axes
    xlim(axes1,[0 63]);
    % Uncomment the following line to preserve the Y-limits of the axes
    ylim(axes1,[0 63]);
    box(axes1,'on');
    grid(axes1,'on');
    axis(axes1,'ij');
%     Set the remaining axes properties
    set(axes1,'CLim',[0 0.04],'FontName','Cambria','FontSize',16,'Layer','top',...
        'TickDir','out','TickLength',[0.02 0.01],'XMinorTick','on','XTick',...
        [0 10 20 30 40 50 60],'YMinorTick','on','YTick',[0 10 20 30 40 50 60]);
end

%%
% for k = 20
%     cdata1 = glcm_prob_coal_mult(:,:,k);
% figure1 = figure('Colormap',...
%     [1 1 1;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 0.9375;0.125 1 0.875;0.1875 1 0.8125;0.25 1 0.75;0.3125 1 0.6875;0.375 1 0.625;0.4375 1 0.5625;0.5 1 0.5;0.5625 1 0.4375;0.625 1 0.375;0.6875 1 0.3125;0.75 1 0.25;0.8125 1 0.1875;0.875 1 0.125;0.9375 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0]);
% 
%     % Create axes
%     axes1 = axes('Parent',figure1);
%     hold(axes1,'on');
% 
%     % Create image
%     image(cdata1,'Parent',axes1,'CDataMapping','scaled');
% 
%     % Create xlabel
%     xlabel({'Reference Pixel Values'},'FontSize',16);
% 
%     % Create ylabel
%     ylabel({'Neighbouring Pixel Values'},'FontSize',16);
% 
%     % Uncomment the following line to preserve the X-limits of the axes
%     xlim(axes1,[0 63]);
%     % Uncomment the following line to preserve the Y-limits of the axes
%     ylim(axes1,[0 63]);
%     box(axes1,'on');
%     grid(axes1,'on');
%     axis(axes1,'ij');
% %     Set the remaining axes properties
%     set(axes1,'CLim',[0 0.04],'FontName','Cambria','FontSize',16,'Layer','top',...
%         'TickDir','out','TickLength',[0.02 0.01],'XMinorTick','on','XTick',...
%         [0 10 20 30 40 50 60],'YMinorTick','on','YTick',[0 10 20 30 40 50 60]);
% end