/*Print data types and also does type-casting in objective c the Automatic way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    int age;
    char namee[50];

    // user input name
    NSLog(@" Whats your name? ");
    scanf("%49s", namee);
    NSLog(@" Whats up %s", namee);

    NSLog(@"\n");

    NSString *nameString = [NSString stringWithUTF8String:namee];
    // user age
    NSLog(@" Whats your age? ");
    scanf("%i", &age);
    NSLog(@"Hello, %@! You are %i years old.", nameString, age);


    
    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}