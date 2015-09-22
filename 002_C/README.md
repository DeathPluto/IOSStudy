#内存分析  

1. 内存寻址由大到小,优先分配内存比较大的字节给变量
2. 变量越先定义,内存地址就越大
3. 取的变量的地址: `&varaibleName`
4. 输入地址: `%p`
5. 一个变量一定要先进行初始化,才能使用  

``` 
int main()
{
	int a = 10;
	int b = 20;
	int c;
	
	print("a的地址是: %p\n",&a);
	return 0;
}
```  
##Mac 下是否显示隐藏文件夹  

`defaults write com.apple.finder AppleShowAllFiles YES(NO)`  



##进制  

十进制:(默认) 

``` 
int number = 1010;  

```  

二进制:(0b或者0B开头)  

```  
int number = 0B1100;  

```
八进制:(0开头)  

```
int number = 014;  

```  
十六进制:(0x或者0X开头)  

```  
int number = 0xc;  

```

> %d/%i 十进制形式输出整数  
> %c 输出字符  
> %p 输出地址  
> %f 输出小数  
> %o 八进制形式输出整数  
> %x 十六进制形式输出整数  

---

![binary image][]  
[binary image]: https://github.com/DeathPluto/ReferenceRepo/raw/master/res/binary.jpg  



  

