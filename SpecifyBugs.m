clear
clc
load('HW4.mat')

release = input('Specify release: ');
mod = software(:,1);
bug = software(:,2);
mbs = software(:,3);

if (release~=1) ||(release~=2)||(release~=3)
    disp('Enter 1 or 2 or 3')
end

if release == 1;
    for mod = software(:,1)
        if ( bug>0 && bug <= 3)&&(mbs == 1)
            disp('Live module: 103,107')
        end
    end
     elseif release == 1;
    for mod = software(:,1)
        if (bug>0 && bug <= 6) && (mbs == 2 || mbs==3);
            disp ('Beta module: 104, 106, 110, 112, 113')
        end
    end
  else release = 3;
    for mod = software(:,1)
        if (bug > 6)&& (mbs == 4 || mbs == 5);
            disp ('None module: none')
        end
    end
   
end
          

