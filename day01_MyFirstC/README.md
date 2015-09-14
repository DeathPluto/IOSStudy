# 01 MyFirstC
1. 编写代码
2. 编译:把c语言代码翻译成0和1  
   工具:clang编译器 (Xcode3 gcc Xcode4 LLVM(clang))  
   安装命令行工具  
   指令: `cc -c fileName.c`  
   编译成功,会生成一个.o目标文件
3. 链接:将.o目标文件与系统自带的函数库合并在一起,生成一个可执行文件  
   链接器  
   指令: `cc fileName.o`
4. 运行: `./a.out`
