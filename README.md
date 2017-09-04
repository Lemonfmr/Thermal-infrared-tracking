# Thermal-infrared-tracking
Deep Convolutional Neural Networks for Thermal Infrared Object Tracking
 
Paper link:https://sites.google.com/view/qiaoliu
 
1.Download the VGG-NET-19 mat file using the link https://uofi.box.com/shared/static/kxzjhbagd6ih1rf7mjyoxn2hy70hltpl.mat or using the link if you are in China http://pan.baidu.com/s/1kU1Me5T and put it into the folder 'cnnnet'.

Note that this mat file is compatile with the MatConvNet-1beta8 used in this work, if you download the mat file from http://www.vlfeat.org/matconvnet/models/imagenet-vgg-verydeep-19.mat, please pay attention to the version compatibility. You may need to modify some names of fields in each convolutional layer.  


2.Using the preCompiled Matconvnet (not recommended) or Compile yourself Matconvnet using Matlab in the command window, type 

>>cd matconvnet1.08

>>addpath matlab

>>%vl_compilenn('enableGpu', true)

or

>>vl_compilenn('enableGpu', true, ...

'cudaRoot', 'C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v8.0', ...

'cudaMethod', 'nvcc') % for windows

Waiting the notification of success.

More information about Matconvnet can be found at http://www.vlfeat.org/matconvnet/install/

3.Run 'runAll_vottir.m'. to test the demo sequences. 

4.'run_MCFTS.m' is the interference of the toolkit VOT_TIR2016.


*********************************************************************************
If you find the code helpful in your research, please consider citing:

@article{liu2017deep,

  title={Deep Convolutional Neural Networks for Thermal Infrared Object Tracking},
  
  author={Liu, Qiao and Lu, Xiaohuan and He, Zhenyu and Zhang, Chunkai and Chen, Wen-Sheng},
  
  journal={Knowledge-Based Systems},
  
  year={2017},
  
  DOI={10.1016/j.knosys.2017.07.032},
  
  publisher={Elsevier}

}

*********************************************************************************



Feedbacks and comments are welcome! 

Feel free to contact us via liuqiao.hit@gmail.com or liuqiao@stu.hit.edu.cn





