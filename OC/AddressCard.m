@implementation AddressCard

-(void) setName: (NSString *)theName
{
  name = [NSString stringWithString:theName];
}

-(void) setEmail:(NSString *)theEmail
{
  email = [NSString stringWithString:theEmail];
}

-(NSString *)name
{
  return name;
}

-(NSString *)email
{
  return email;
}

-(void) print
{
  NSLog (@"=========================");
  NSLog (@"|                      |");
  NSLog (@"|  %-31s  |",[name UTF8String]);
  NSLog (@"|  %-31s  |",[email UTF8String]);
  
}

@end
