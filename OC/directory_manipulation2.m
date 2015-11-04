#import <Foundation/Foundation.h>

//
int main()
{
  NSString *path;
  NSFileManager *fm;
  NSDirectoryEnumerator *dirEnum;
  NSArray *dirArray;
  
  //需要创建文件管理器的实例
  fm = [NSFileManager defaultManager];
  
  //获取当前工作目录的路径
  
  path = [fm currentDirectoryPath];
  //枚举目录  默认情况enumeratorAtPath 如果其中一个文件为目
  //录,那么也会递归枚举它的内容.
  //在这个过程中向对象发送一条skipDescendants消息,可以动态阻止递归
  dirEnum = [fm enumeratorAtPath:path];
  NSLog (@"Contents of %@",path);
  
  while((path = [dirEnum nextObject] != nil){
    NSLog (@"%@",path);
    
    [fm fileExistsAtPath:path isDirectory:&flag];
    
    if(flag == YES)
      [dirEnum skipDescendents];
  }
    
    
  //另一种枚举目录的方法
  dirArray = [fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:NULL];
  NSLog (@"Contents using contentsOfDirectoryAtPath:error:");
  
  for(path in dirArray)
    NSLog (@"%@",path);
    
  return 0;

}