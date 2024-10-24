/*Print data types and also does type-casting in objective c the manual way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // Explicit casting (manual)
    int i = (int)3.14;   // double to int (3)
    float f2 = (float)i; // int to float (3.0)

    NSLog(@"Value of f = %i", i);
    NSLog(@"Value of f = %f", f2);

    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}