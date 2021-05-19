# 代码翻车了，别用这些代码了
# 一定要用的话去这里[下载](https://wwa.lanzoui.com/i5KAfp9tb6f)，下载好后啥都别改，不用编译，直接烧录
## 一定要看的说明  
> 1. 代码`还有bug`，我没法仿真出来，原因是PLL模块仿真时一直输出高阻态，但是`不影响实验`  
> 2. 仿真出不了结果，但我还是把testbench附上了，有兴趣的自己改改TOP文件里调用PLL的部分  
### `一定要看代码里的注释！！！！`
有的同学看不到下面的图片，我把步骤放到[这里](https://wwa.lanzoui.com/isbqbp909ad)，可以下载下来查看  
## 引脚分配表
|信号名|引脚|主板器件|
|------|----|--------|
|SEG[7]|Pin_120|SEG7|
|SEG[6]|Pin_113|SEG6|
|SEG[5]|Pin_121|SEG5|
|SEG[4]|Pin_114|SEG4|
|SEG[3]|Pin_125|SEG3|
|SEG[2]|Pin_115|SEG2|
|SEG[1]|Pin_126|SEG1|
|SEG[0]|Pin_119|SEG0|
|codeout[6]|Pin_112|a|
|codeout[5]|Pin_100|b|
|codeout[4]|Pin_104|c|
|codeout[3]|Pin_111|d|
|codeout[2]|Pin_106|e|
|codeout[1]|Pin_110|f|
|codeout[0]|Pin_103|g|
|ft|Pin_23|ECLK|
|inclk0|Pin_90|50MHz|


# 下面是生成PLL模块，我把步骤放下面  
------
![步骤1](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/1.png)
------
![步骤2](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/2.png)
------
![步骤3](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/3.png)
------
![步骤4](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/4.png)
------
![步骤5](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/5.png)
------
![步骤6](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/6.png)
------
![步骤7](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/7.png)
------
![步骤8](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/8.png)
------
![步骤9](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/9.png)
------
![步骤10](https://github.com/DuCeli/SWJTU-/blob/master/7.%E5%8D%A0%E7%A9%BA%E6%AF%94%E6%B5%8B%E9%87%8F%E4%BB%AA/%E7%94%9F%E6%88%90PLL%E6%A8%A1%E5%9D%97%E6%AD%A5%E9%AA%A4/10.png)
