#import <Foundation/Foundation.h>

int main()
{
  NSString *dirName = @"testdir";
  NSString *path;
  NSFileManager *fm;
  
  //需要创建文件管理器的实例
  
  fm = [NSFileManager defaultManager];
  
  //获取当前目录
  
  path = [fm currentDirectoryPath];
  NSLog (@"Current directory path is %@",path);
  
  //创建一个新目录
  if([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL] == NO)
  {
    NSLog (@"Couldn't create directory!");
    return 1;
  }
  //重命名新的目录
  if( [fm moveItemAtPath:dirName toPath: @"newdire" error:NULL] == NO)
  {
    NSLog (@"Directory rename failed!");
    return 2;
  }
  
  //更改目录到新的目录
  
  if([fm changeCurrentDirectoryPath:@"newdire"] == NO)
  {
    NSLog (@"Change directory failed");
    return 3;
  }
  
  //获取并显示当前的工作目录
  path = [fm currentDirectoryPath];
  NSLog (@"Current directory path is %@",path);
  
  NSLog (@"All operations were successful!");
  
  return 0;
}