
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    

    // Basic Variable Types in Objective-C
    int myInt = 42;                    // Integer
    float myFloat = 3.14f;             // Floating point number
    double myDouble = 3.14159;         // Double precision floating point
    char myChar = 'A';                 // Single character
    BOOL myBool = YES;                 // Boolean (YES or NO)
    NSString *myString = @"Hello";     // String object
    NSInteger myNSInteger = 100;       // Platform-independent integer
    NSNumber *myNumber = @42;          // Number object





    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}