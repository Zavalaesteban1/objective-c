/*Print data types and also does type-casting in objective c the Automatic way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // Printing an string variable
    NSString *name = @"zavala";     // String object
    NSLog(@"Your name is %@", name);

    // endl
    NSLog(@"\n");

    // for loop traditional one 
    for(int i = 1; i <= 10; i++)
    {
        NSLog(@"%i", i);
    }

    // endl
    NSLog(@"\n");

    // print each char by one
    for(int i = 0; i < )



    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}