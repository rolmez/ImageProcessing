function odev1b()

I=imread('peppers.png');
I8bit=rgb2gray(I);

I7bit=convertBit(I8bit,7);
I6bit=convertBit(I8bit,6);
I5bit=convertBit(I8bit,5);
I4bit=convertBit(I8bit,4);
I3bit=convertBit(I8bit,3);
I2bit=convertBit(I8bit,2);
I1bit=convertBit(I8bit,1);

display(I8bit,'m=8 bit, G=256',1);
display(I7bit,'m=7 bit, G=128',2);
display(I6bit,'m=6 bit, G=64',3);
display(I5bit,'m=5 bit, G=32',4);
display(I4bit,'m=4 bit, G=16',5);
display(I3bit,'m=3 bit, G=8',6);
display(I2bit,'m=2 bit, G=4',7);
display(I1bit,'m=1 bit, G=2',8);

    function image=convertBit(img,bit)
        image=img;
        if bit==1
            val=256/((2^bit)); 
        else
        val=256/( (2^bit)-1);
        end
        for i=1:size(img,1)
            for j=1: size(img,2)
                if img(i,j)<=val
                    image(i,j)=0;                
                
                elseif img(i,j)>256-val
                    image(i,j)=255;
                else    
                x=round(img(i,j)/val);               
                image(i,j)=val*(x);
                end
            end
        end
        
        
    end
    function display(I,bit,s)
		subplot(2,4,s)
		imshow(I);
		title(bit);
    end

end