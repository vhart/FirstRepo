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
        // insert code here...
        NSLog(@"Hello, World!");
        char kar = 'a';
        char combo = kar + 'd';
        int c = 78;
        CGFloat d = 3.22233;
        BOOL A = 0 < 1;
        NSLog(@"%i", A);
        NSLog(@"Is a = 0? %s", 'a' == 'a'? "Potatoes":"False" );
        
        NSArray *stuff = ( @"Mike", @"Sandwich", @"Tony", @"Tofu", @"Popeye", @"Spinach");
        int stuffCount = [stuff count];
        for (int i= -1; i<stuffCount+2;i++){
            if(i==-1 || i == stuffCount+1){
                NSString *border = @"+--------------------------------------+";
                int width = [border length];
                NSLog(@"%@",border);
            }
            else{
                if (i%2==0){
                    NSString *rowEven =(@"| %i |",i);
                    for (int space=0;  )
                }
            }
            NSString *rowInfo = @""
        }
    }
    return 0;
}
