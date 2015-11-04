#import <Foundation/Foundation.h>
// 基本的字符串操作
int main()
{
  NSString *str1 = @"This is string A";
  NSString *str2 = @"This is string B";
  
  NSString *res;
  NSComparisonResult compareResult;
  
  //计算字符串中的字符
  NSLog (@"Length of str1: &lu",[str1 length]);
  
  //将一个字符串复制到另一个字符串
  res = [NSString stringWithString:str1];
  NSLog (@"copy:%@",res];
  
  //将一个字符串复制到另一个字符串的末尾
  
  str2 = [str1 stringByAppendingString:str2];
  NSLog (@"Concatentation: %@",str2);
  
  //验证两个字符串是否相等
  if([str1 isEqualToString: res] == YES)
      NSLog (@"str1 == res");
  else
      NSLog (@"str1 != res");
      
  //验证一个字符串是否小于,等于或者大于另一个字符串
  compareResult = [str1 compare:str2];
  
  if(compareResult == NSOrderedAscending)
      NSLog (@"str1 < str2");
  else if (compareResult == NSOrderedSame)
      NSLog (@"str1 == str2");
  else
      NSLog (@"str1 > str2");
      
  
  //将字符串转换为大写
  res = [str1 uppercaseString];
  NSLog (@"Uppercase conversion: %s",[res UTF8String]);
  
  //将字符串转换为小写
  
  res = [str1 lowercaseString];
  NSLog (@"Lowercase conversion: %s",res];
  
  NSLog (@"Original string: %@",str1);
  
  
  
  return 0;
}