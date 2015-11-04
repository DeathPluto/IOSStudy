#import <Foundation/Foundation.h>

int main()
{
  NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
  
  //存储三个条目在类别中
  
  [glossary setObject: @"A class defined so other classes can inherit from it"
            forKey: @"abstract class"];
  [glossary setObject: @"To implement all the methods defined in a protocol"
            forKey: @"adopt"];
  [glossary setObject: @"Storing an object for later use"
            forKey: @"archiving"];
            
  //检索并显示它们
  
  NSLog (@"abstract class : %@",[glossary objectForKey: @"abstract class"]);
  NSLog (@"adopt: %@",[glossary objectForKey: @"adopt"]);
  NSLog (@"archiving : %@",[glossary objectForKey:@"archiving"]);
  
  return 0;
}