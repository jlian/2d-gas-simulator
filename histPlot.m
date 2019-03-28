x= rmmissing(parHitTable);

count=1
for j=1:400
    if(sum(x(:,1)==j)>2)
        y=sortrows(x(x(:,1)==j,:),3);
        length(y)
        for i=1:length(y)-1
            p(count)= y(i+1,3)-y(i,3);
            count=count+1;
        end
    end
end

