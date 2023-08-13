## 手把手教你用 VScode 搭建轻量级 Verilog 仿真环境

详细保姆级操作教程请搜索微信公众号：`在下石同学`，查看往期文章： `FPGA 开发专题 | 手把手教你用 VScode 搭建轻量级 Verilog 仿真环境 | 真保姆级`

### 1、安装 vscode + iverilog + make

### 2、这里通过实现一个简单的全加器，来演示整个环境如何使用

首先新建一个文件夹`full_adder`，文件夹中新建三个文件`half_adder.v、full_adder.v、full_adder_tb.v`

我们编写`*.v`代码文件后，把`makefile`文件放在目录顶层，然后打开该文件，找到文中`V_SOURCES`，在后面添加你编写的所有`*.v`文件的相对路径，本示例编写了三个文件：`full_adder_tb.v`、`full_adder.v`、`half_adder.v`，将这三个文件路径添加进去，`\`符号代表换行符，最后一行不需要添加

每次编写完自己的 verilog/HDL 代码后，只需要在`makefile`中添加`V_SOURCES`就可以了，其他地方不用动

如下指令完成编译和绘制仿真波形
```
#build again
$make
#plot the waveform
$make plot
#clean
$make clean
