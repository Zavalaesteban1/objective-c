/*Print data types and also does type-casting in objective c the Automatic way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    // Array of mixed objects
    NSArray *mixedArray = @[@42, @"Hello", @3.14];

    // 1. Basic for loop to print objects 
    for(int i = 0; i < mixedArray.count; i++) 
    {
        NSLog(@"Item %d: %@", i, mixedArray[i]);
    }

    NSLog(@"\n");
    // Print entire array at once
    NSLog(@"\nFull array:\n %@", mixedArray);

    
    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}