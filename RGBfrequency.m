function RGB_Frequency = RGBfrequency(Img)

	R  =Img(:,:,1); 
    G  =Img(:,:,2);
    B  =Img(:,:,3);
    yR = imhist1(R);%��Rͨ�����Ҷȼ���Ƶ��
    yG = imhist1(G);
    yB = imhist1(B);
    x=0:1:255;
    plot(x,yR,'.','LineWidth', 1.0, 'color','r'); %���ԣ���ɫ����� 
    hold on,plot(x,yG,'.','LineWidth', 1.0, 'color','g');
    hold on,RGB_Frequency = plot(x,yB,'.','LineWidth', 1.0, 'color','b');
    hold off;
    axis([0,255,0,0.03]);
    %%���ͼ��x���յ㲻�������ƣ�250���ǣ�����251-255�ĻҶȼ����֣�x��Ĭ�ϻ���չ��300��ͼ�����ۣ����Լ��ϴ˲��裬��x�����Ҷ�����Ϊ255
    %legend('��ɫͨ��','��ɫͨ��','��ɫͨ��'); %���ϽǱ�ע
    xlabel('Gray levels', 'FontSize',12,'FontWeight','bold') %x���������� 
    ylabel('Frequency', 'FontSize',12,'FontWeight','bold') %y����������
	%ȥ��������ɫ
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
