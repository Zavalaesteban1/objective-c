/*Print data types and also does type-casting in objective c the Automatic way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        float f = 3.14;
        double d = f;  
        
        NSLog(@"Value of f = %f", f);
        NSLog(@"Value of d = %lf", d);

        [pool drain];
        return 0;
}