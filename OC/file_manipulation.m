#import <Foundation/Foundation.h>
//基本的文件操作,假定存在一个名为"testfile"的文件,在当前目录
int main()
{
  NSString *fName = @"testfile";
  NSFileManager *fm;
  NSDictionary *attr;
  
  //需要创建文件管理器的实例
  fm = [NSFileManager defaultManager];
  
  //首先确定测试文件存在
  if([fm fileExistsAtPath:fName] == NO)
  {
    NSLog (@"File doesn't exist!");
    return 1;
  }
  //创建一个副本
  
  if([fm copyItemAtPath:fName toPath:@"newfile" error:NULL]== NO)
  {
    NSLog (@"File Copy failed!");
    return 2;
  }
  
  //测试两个文件是否一致
  
  if( [fm contentsEqualAtPath:fName andPath:@"newfile"] == NO)
  {
    NSLog (@"Files are Not Equal!");
    return 3;
  }
  
  //重命名副本
  
  if([fm moveItemAtPath: @"newfile" toPath:@"newfile2"
    error:NULL] == NO)
  {
    NSLog (@"File rename Failed!");
    return 4;
  }
  
  //获取newfile2的大小
  
  if((attr = [fm attributesOfItemAtPath:@"newfile2"error:NULL])==nil)
  {
    NSLog (@"Couldn't get file attributes!");
    return 5;
  }
  
  NSLog (@"File size is @1lu bytes",[[attr objectForKey:NSFileSize] unsignedLongLongValue]);
  
  //最后删除原始文件
  
  if([fm removeItemAtPath:fName error:NULL] == NO)
  {
    NSLog(@"file removal failed");
    return 6;
  }
  
  //显示新创建的文件内容
  NSLog(@"%@",[NSString stringWithContentsOfFile:@"newfile2" encode:NSUTF8StringEncoding error:NULL]);
  
  return 0;
}