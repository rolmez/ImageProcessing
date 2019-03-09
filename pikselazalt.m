function  odev1a()

I=imread('lenna256.jpg');
A=rgb2gray(I);

    function img= Piksel(px,image)
        img=image;
        kordX=1;
        kordY=1;
        [x, y]=size(image);
        for i=1: x
            for j=1:y  
                if(j>2 && mod(j,px+1)==0)
                    kordY=j;
				end
                img(i,j)=image(kordX,kordY);
			end
            kordY=1;
            if(i>2 && mod(i,px+1)==0)
                kordX=i;
            end
        end
    end

Px256=A;
Px128=Piksel(2,A);
Px64=Piksel(4,A);
Px32=Piksel(8,A);
Px16=Piksel(16,A);
Px8=Piksel(32,A);



subplot(2,3,1),imshow(Px256),title('256px');
subplot(2,3,2),imshow(Px128),title('128px');
subplot(2,3,3),imshow(Px64),title('64px');
subplot(2,3,4),imshow(Px32),title('32px');
subplot(2,3,5),imshow(Px16),title('16px');
subplot(2,3,6),imshow(Px8),title('8px');


end