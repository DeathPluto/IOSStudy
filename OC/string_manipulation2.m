#import <Foundation/Foundation.h>

int main()
{
  NSString *str1 = @"This is string A";
  NSString *str2 = @"This is string B";
  NSString *res;
  NSRange subRange;
  
  //从字符串中提取前3个字符
  res = [str1 substringToIndex :3];
  NSLog (@"First 3 chars of str1: %@",res);
  
  //提取从索引5开始知道结尾的子字符串
  res = [str1 substringFromIndex:5];
  NSLog (@"Chars from index 5 of str1: %@",res);
  
  //提前从索引8开始到索引13的子字符串(6个字符)
  res = [[str1 substringFromIndex:8]substringToIndex:6];
  NSLog (@"Chars from index 8 througn 13:%@",res);
  
  //更简单的方法
  res = [str1 substringWithRange:NSMakeRange(8,6)];
  NSLog (@"Chars from index 8 througn 13:%@",res);
  
  //从另一个字符串中查找一个字符串
  subRange = [str1 rangeOfString :@"string A"];
  NSLog (@"String is at index %lu,length is %lu",subRange,location,subRange.length);
  
  subRange = [str2 rangeOfString : @"string B"];
  
  if(subRange.location == NSNotFound)
      NSLog (@"String not found");
  else
      NSLog (@"String is at index %lu,length is %lu",subRange,location,subRange.length);
      
  
  return 0;
}