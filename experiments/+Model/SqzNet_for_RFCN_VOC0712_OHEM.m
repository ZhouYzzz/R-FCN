function model = SqzNet_for_RFCN_VOC0712_OHEM(model)
% ResNet 50layers with OHEM training (finetuned from res3a)

model.solver_def_file        = fullfile(pwd, 'models', 'rfcn_prototxts', 'SqzNet_OHEM', 'solver_80k110k_lr1_3.prototxt');
model.test_net_def_file      = fullfile(pwd, 'models', 'rfcn_prototxts', 'SqzNet_OHEM', 'test.prototxt');

model.net_file               = fullfile(pwd, 'models', 'pre_trained_models', 'SqzNet', 'squeezenet_v1.1.caffemodel');
model.mean_image             = fullfile(pwd, 'models', 'pre_trained_models', 'SqzNet', 'mean_image');

end
