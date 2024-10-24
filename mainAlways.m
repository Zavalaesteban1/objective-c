/*Print data types and also does type-casting in objective c the Automatic way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}