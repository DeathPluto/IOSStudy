<<<<<<< HEAD
### Objective-C 初始化

* __method1__  
 
```
Fraction *myFraction;
myFraction = [Fraction alloc];
myFraction = [myFraction init];

```
* __method2__  

```
Fraction *myFraction = [[Fraction alloc] init];

```

* __method3__

```  
Fraction *myFraction = [Fraction new];

```  

---

### 输出不同类型变量

```  
 		int integerVar = 100;
        float floatVar = 331.33;
        double doubleVar = 8.44e+11;
        char charVar = 'w';
        
        NSLog(@"int = %i",integerVar);
        NSLog(@"float = %f",floatVar);
        NSLog(@"double = %e",doubleVar);
        NSLog(@"double = %g",doubleVar);
        NSLog(@"char = %c",charVar);

```

### 普通类  


```  
  
@interface Fraction : NSObject  

@property int numerator, denominator;

-(void) print;  

-(double) converToNum;  

@end

```

