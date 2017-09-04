function [scale_3]=Cal_scale(response)
 
    response(:,:,2)= response(:,:,2)*0.94;   %1.05 size
    response(:,:,3)= response(:,:,3)*0.94;   %0.95 size
    maxr=max(response(:));
  %  a=response(:,:,1); 
    b=response(:,:,2);
    c=response(:,:,3);
  %  max1=max(a(:));
    max2=max(b(:));
    max3= max(c(:));
    
    if max2==maxr
         scales=2;
    elseif max3==maxr
         scales=3;
    else 
         scales=1;
    end
    scale_3=scales;
%     [row, col] = find(response == max(response(:)), 1);
%     if col>size(response,2)*2
%            scales=3;
%            %col=col-size(response,2)*2;
%            %scaling=scaling*0.95;
%     elseif col>size(response,2)
%            scales=2;
%            %col=col-size(response,2);
%            %scaling=scaling*1.05;
%     else
%            scales=1;
%     end
%    scale_3=scales;
    
%     h_response(:,:,2)= h_response(:,:,2)*0.98;
%     h_response(:,:,3)= h_response(:,:,3)*0.98;
%     [row, col] = find(h_response == max(h_response(:)), 1);
%     if col>size(h_response,2)*2
%            h_scales=3;
%            %col=col-size(h_response,2)*2;
%            %scaling=scaling*0.95;
%     elseif col>size(h_response,2)
%            h_scales=2;
%            %col=col-size(h_response,2);
%            %scaling=scaling*1.05;
%     else
%            h_scales=1;
%     end
%     %scale_3=h_scales;
%     if h_scales==scales
%         scale_3=h_scales;
%     else
%         scale_3=1;
%     end
%     %scale_3=scales;


end