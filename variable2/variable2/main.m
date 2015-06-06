//
//  main.m
//  variable2
//
//  Created by Varindra Hart on 6/4/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* insert code here...
        NSLog(@"Hello, World!");
        
        //BOOL A = 0 < 1;
        //NSLog(@"%i", A);
        //NSLog(@"Is a = 0? %s", 'a' == 'a'? "Potatoes":"False" );*/
        
        NSArray *stuff = ([NSArray arrayWithObjects: @"Name", @"Favorite Food",@"Mike", @"Sandwich", @"Tony", @"Tofu", @"Popeye", @"Spinach",@"Pikachu", @"Enemies Tears", @"Dracula", @"Blood", @"Cookie M.", @"Cookies", @"Clark K.", @"Strudel", @"Mr. Krabs", @"Money",nil]);
        /*NSString *test = @"---------|";
        NSRange range = NSMakeRange(5,4);
        test = [test stringByReplacingCharactersInRange:range withString:@"star"];
        NSLog(@"\n %@",test);*/ //testing character replacing
        //"| %d |              |                   |" 5 for #, 6-19,|, 21-39,|
        int stuffCount = [stuff count];
        NSLog(@"%d",stuffCount);
        NSString *border = @"+--------------------------------------+";//length 40
        NSString *table = @"\n";
        for (int i= -1; i<(stuffCount/2 +1);i++){
            if(i==-1 || i == stuffCount/2){
                table = [[table stringByAppendingString:border]stringByAppendingString:@"\n"];
                            }
            else{
                NSRange range1 = NSMakeRange(19-[[stuff objectAtIndex:(2*i)] length] ,[[stuff objectAtIndex:(2*i)] length]);
                NSRange range2 = NSMakeRange(39-[[stuff objectAtIndex:(2*i+1)] length],[[stuff objectAtIndex:(2*i+1)] length]);
                if (i==0){
                    NSString *outputString = @"|   |              |                   |";
                    outputString = [[outputString stringByReplacingCharactersInRange:range1 withString:[stuff objectAtIndex:2*i]] stringByReplacingCharactersInRange:range2 withString:[stuff objectAtIndex:(2*i+1)]];
                    table = [[table stringByAppendingString:outputString]stringByAppendingString:@"\n"];

                }
                else{
                NSString *outputString = [NSString stringWithFormat:@"| %d |              |                   |",i];
                outputString = [[outputString stringByReplacingCharactersInRange:range1 withString:[stuff objectAtIndex:2*i]] stringByReplacingCharactersInRange:range2 withString:[stuff objectAtIndex:(2*i+1)]];
                table = [[table stringByAppendingString:outputString]stringByAppendingString:@"\n"];
            }
            }
            if(i==0){
                NSString *dashed = @"----------------------------------------\n";
                table = [table stringByAppendingString:dashed];
            }
        }
        NSLog(@"%@",table);
        //Finally!
    }
    return 0;
}
