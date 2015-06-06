//
//  main.m
//  12DaysOfChristmas
//
//  Created by Varindra Hart on 6/4/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

void PrintLyrics(int a, NSArray *array, NSString *print){
    if (a < 0) {
        NSLog (@"%@----------------",print);
        return ;
    }
    else {
        NSString *element = [array objectAtIndex:a];
        print = [[print stringByAppendingString:element]stringByAppendingString:@"\n"];
        PrintLyrics(a-1, array, print);
        }
    }


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSArray *day = ([NSArray arrayWithObjects:@"Second", @"Third", @"Fourth", @"Fifth", @"Sixth", @"Seventh", @"Eighth", @"Ninth", @"Tenth", @"Eleventh", @"Twelfth",nil]);
        
        NSArray *giftDays =([NSArray arrayWithObjects:@"and a Partridge in a pear tree", @"Two turtle doves", @"Three french hens",@"Four calling birds",@"Five gold rings",@"Six geese a laying",@"Seven swans a swimming",@"Eight maids a milking",@"Nine ladies Dancing",@"Ten lords a leaping",@"Eleven pipers piping",@"Twelve drummers drumming", nil]);
        for (int i=0; i < 12; i++){
        
            if(i == 0){
                NSLog(@"\n----------------\nOn the First day of Christmas my true love gave to me \na Partridge in a pear tree\n----------------");
            }
            else{
                NSString *seq= ([[[@"\n----------------\nOn the " stringByAppendingString:[day objectAtIndex:(i-1)]] stringByAppendingString:@" day of Christmas my true love gave to me"]stringByAppendingString:@"\n"]);
                PrintLyrics(i, giftDays, seq);
        }
        }
    }
    return 0;
}
