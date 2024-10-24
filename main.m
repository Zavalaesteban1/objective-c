/*Print data types and also does type-casting in objective c the Automatic way*/


/*
    Print data types
    For strings use %@
    For int use %i
    For float use %f
    For double use %lf

*/
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

    // Type Casting Examples
    // Implicit casting (automatic)
    float f = 3.14;
    double d = f;        // float to double (safe, no data loss)

    // Explicit casting (manual)
    int i = (int)3.14;   // double to int (3)
    float f2 = (float)i; // int to float (3.0)

    // Object Casting
    // Base class and subclass example
    @interface Animal : NSObject
    @end

    @interface Dog : Animal
    @end

    // Downcasting (from parent to child class)
    Animal *animal = [[Dog alloc] init];
    Dog *dog = (Dog *)animal;    // Explicit cast
    Dog *dog2 = [animal isKindOfClass:[Dog class]] ? (Dog *)animal : nil;  // Safe casting

    // Number Object Conversions
    NSNumber *number = @42;
    int intValue = [number intValue];           // Convert NSNumber to int
    float floatValue = [number floatValue];     // Convert NSNumber to float
    NSString *stringValue = [number stringValue]; // Convert NSNumber to string

    // String to Number Conversions
    NSString *numString = @"123";
    int convertedInt = [numString intValue];    // String to int
    float convertedFloat = [numString floatValue]; // String to float

    // Array of mixed objects
    NSArray *mixedArray = @[@42, @"Hello", @3.14];
    // Accessing with type checking
    for (id obj in mixedArray) {
        if ([obj isKindOfClass:[NSNumber class]]) {
            NSNumber *num = (NSNumber *)obj;
            NSLog(@"Number: %@", num);
        } else if ([obj isKindOfClass:[NSString class]]) {
            NSString *str = (NSString *)obj;
            NSLog(@"String: %@", str);
        }
    }

    // Modern Objective-C Type Casting
    id genericObject = @"Hello";
    // Using modern syntax
    NSString *modernString = (NSString *)genericObject;
    // Using safe casting
    if ([genericObject isKindOfClass:[NSString class]]) {
        NSString *safeString = (NSString *)genericObject;
    }


    // collects all the memory you use and throws it away to free up memory for the next program
    [pool drain];
    return 0;
}