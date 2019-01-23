img_objects = extract_digits_from_img('../Digits/zeros.bmp')
%%
im_raw = prdataset(a,getlabels(a));
trained_classifier= im_raw*parzenc(1)

%%
%current_img = reshape(img_objects(1:20, 1:20),[1,400]);
%current_img = prdataset(current_img,['digit_7']);
images = []
for i = [1:size(img_objects,3)]
    images = [images; reshape(img_objects(:,:,i),[1,400])];
end
testset = prdataset(images,{'digit_0','digit_0','digit_0','digit_0'})

%%
res = testset*trained_classifier*classc %do +res for classifier probabilities
res*labeld %classifier thinks this


%%
%Demo
for i = [1:size(fo,3)]
    figure
    show(img_objects(:,:,i))
end