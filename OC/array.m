#import <Foundation/Foundation.h>

int main()
{
  int i;
  
  //创建一个数组包含月份的名称
  
  NSArray *monthNames = [NSArray arrayWithObjects:@"January",@"February",@"March",
      @"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",
      @"December",nil];// nil是标记数组的结束,并不会存储在数组中
  
  //列出数组中所有元素
  
  NSLog (@"Month Name");
  NSLog (@"===== ====");
  
  for ( i = 0;i <12; ++i)
    NSLog (@"%2i   %@",i+1,[monthNames objectAtIndex:i];
  
  
  ///-----------------------------------------------
  
  
  NSMutableArray *numbers = [NSMutableArray array];
  NSNumber *myNumber;
  
  //创建0~9数字的数组
  
  for(i=0;i<10;i++){
    myMumber = [NSNumber numberWithInteger:i];
    [numbers addObject: myNumber];
  }
  
  //遍历数组与显示其值
  
  for(i=0;i<10;i++){
    myNumber = [numbers objectAtIndex:i]'
    NSLog (@"%@",myNumber);
  }
  
  //使用带有% @ 格式的NSLog显示
  
  NSLog (@"=======Using a single NSLog");
  NSLog (@"%@",numbers);
  return 0;
}