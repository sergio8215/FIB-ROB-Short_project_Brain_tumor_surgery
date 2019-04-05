% Use fourth input for color scale.

% 23 - 1era diapositiva donde se ve el tumor
% 49 - última diapositiva donde se ve el tumor
% 37 - donde esta mas grande
% alto seria (49-23)*1.4mm = 36.4mm, largo y ancho con la regla del
% imaios.com
% 33mm largo / 30mm ancho / 36.4mm alto


diapos = 112*1.4;
j = 0;
k = 0;
hold on
for i=0:1.4:diapos
    
    if (j > 23) && (j <= 36)
        ptos=circle([0 0 0+i], 2.3846*k ,5);
        ptosHT=[ptos;ones(1,50)];
        scatter3(ptosHT(1,:),ptosHT(2,:),ptosHT(3,:),'filled');
        k=k+1;
    elseif ((j > 36) && (j < 49))
        ptos=circle([0 0 0+i], 2.3846*k ,5);
        ptosHT=[ptos;ones(1,50)];
        scatter3(ptosHT(1,:),ptosHT(2,:),ptosHT(3,:),'filled');
        k=k-1;
    end
  
    s= fill3([100 -100 -100 100], [100 100 -100 -100], [0+i 0+i 0+i 0+i], [1 1 1 1]);
    set(s,'facealpha',.0)
    j=j+1;
    
end
hold off