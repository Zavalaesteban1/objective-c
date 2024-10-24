/*Print data types and also does type-casting in objective c the Automatic way*/
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    // protects you from memory to run the program
    // collecting the memoery from the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    

    NSLog(@"Welcome to the Cool Number Printer!");
        
    for(int i = 1; i <= 10; i++) 
    {
        int coolNumber = i * 7;
        NSLog(@"Cool number %i: %i", i, coolNumber);
            
        if (coolNumber % 2 == 0) 
        {
            NSLog(@"  This number is even!");
        } 
        else 
        {
            NSLog(@"  This number is odd!");
        }
    }
        
    NSLog(@"Thanks for using the Cool Number Printer!");



    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}