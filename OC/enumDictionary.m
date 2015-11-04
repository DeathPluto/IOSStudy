#import <Foundation/Foundation.h>

int main()
{
  NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
      @"AAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      @"keyBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
      @"CCCCCCCCCCCCCCCCCCCCCCCCCCCC",
      @"keyDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      nil
  ];
  
  //打印词典中所有键值对
  
  for (NSString *key in glossary)
    NSLog (@"%@:%@",key,[glossary objectForKey:key];
    
  return 0;
}