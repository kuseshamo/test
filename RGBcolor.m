function RGB_model = RGBcolor(Img)

	[m,n,o]=size(Img);

	x=zeros(m,n);
	y=zeros(m,n);
	z=zeros(m,n);
    %ȥ��������ɫ
	figure ('color', 'w');
	for i=1:m
		for j=1:n
				x(i,j)=Img(i,j,1);
				y(i,j)=Img(i,j,2);
				z(i,j)=Img(i,j,3);
				%x(i,j),y(i,j),z(i,j)�ֱ�Ϊ��ʾ������������ֵ��'.'��ʾ����ά����������ֵ���յ���ʾ��ĬΪ������'color'��ʾ�Զ�����ɫ���������ɫֵ
				RGB_model = plot3(x(i,j),y(i,j),z(i,j),'.','color',Img(i,j,:)); 
				%������plot3���������ͼ���ϼӵ�
				hold on
		end
	end
	%��ʾ���������ֵ
	grid on
	%��ʾ�����������
	xlabel('RED','FontSize',12,'FontWeight','bold'); 
    ylabel('GREEN', 'FontSize',12,'FontWeight','bold'); 
    zlabel('BULE', 'FontSize',12,'FontWeight','bold');
end
