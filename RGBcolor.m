function RGB_model = RGBcolor(Img)

	[m,n,o]=size(Img);

	x=zeros(m,n);
	y=zeros(m,n);
	z=zeros(m,n);
    %去掉背景颜色
	figure ('color', 'w');
	for i=1:m
		for j=1:n
				x(i,j)=Img(i,j,1);
				y(i,j)=Img(i,j,2);
				z(i,j)=Img(i,j,3);
				%x(i,j),y(i,j),z(i,j)分别为显示的三个坐标数值，'.'表示在三维坐标中坐标值按照点显示，默为线条，'color'表示自定义颜色，后面接颜色值
				RGB_model = plot3(x(i,j),y(i,j),z(i,j),'.','color',Img(i,j,:)); 
				%不结束plot3继续在这个图像上加点
				hold on
		end
	end
	%显示坐标轴的数值
	grid on
	%显示坐标轴的名称
	xlabel('RED','FontSize',12,'FontWeight','bold'); 
    ylabel('GREEN', 'FontSize',12,'FontWeight','bold'); 
    zlabel('BULE', 'FontSize',12,'FontWeight','bold');
end
