function RGB_Frequency = RGBfrequency(Img)

	R  =Img(:,:,1); 
    G  =Img(:,:,2);
    B  =Img(:,:,3);
    yR = imhist1(R);%求R通道各灰度级的频率
    yG = imhist1(G);
    yB = imhist1(B);
    x=0:1:255;
    plot(x,yR,'.','LineWidth', 1.0, 'color','r'); %线性，颜色，标记 
    hold on,plot(x,yG,'.','LineWidth', 1.0, 'color','g');
    hold on,RGB_Frequency = plot(x,yB,'.','LineWidth', 1.0, 'color','b');
    hold off;
    axis([0,255,0,0.03]);
    %%如果图像x轴终点不设置限制（250）是，会有251-255的灰度级出现，x轴默认会扩展到300，图像不美观，可以加上此步骤，将x轴最右端设置为255
    %legend('红色通道','绿色通道','蓝色通道'); %右上角标注
    xlabel('Gray levels', 'FontSize',12,'FontWeight','bold') %x轴坐标描述 
    ylabel('Frequency', 'FontSize',12,'FontWeight','bold') %y轴坐标描述
	%去掉背景颜色
	set(0,'defaultfigurecolor','w');
end

function h=imhist1(B0)
    s=size(B0);
    B=double(B0);
    s=size(B);
    h=zeros(1,256);
    for i=1:s(1)
        for j=1:s(2)
            k=B(i,j);
            k=floor(k);
            h(k+1)=h(k+1)+1;
        end
    end
    for i=1:256
        h(i)=h(i)/(s(1)*s(2));
    end
end
