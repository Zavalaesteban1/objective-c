#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) 
{
     // protects you from memory to run the program
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
   
    
    char name[50];
    int age;

    NSLog(@"Welcome to the Personal Greeter!");

    NSLog(@"Please enter your name: ");
    scanf("%49s", name);

    NSLog(@"Please enter your age: ");
    scanf("%i", &age);

    NSString *nameString = [NSString stringWithUTF8String:name];

    NSLog(@"Hello, %@! You are %i years old.", nameString, age);

    if (age < 18) 
    {
        NSLog(@"You're still young. Enjoy your youth!");
    } else if (age >= 18 && age < 65) 
    {
        NSLog(@"You getting old");
    } 
    else 
    {
        NSLog(@"You're a senior citizen. Wisdom comes with age!");
    }

    NSLog(@"Thanks for using the Personal Greeter, %@!", nameString);

     // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}