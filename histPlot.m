
CollitionTime (1:1000,:)=[];
size(CollitionTime)
histogram(CollitionTime((CollitionTime(:,2) == 2),1))

fid =fopen("data.csv", 'w')
fprintf(fid, "%f\n",CollitionTime((CollitionTime(:,2) == 2),1))
fclose(fid)