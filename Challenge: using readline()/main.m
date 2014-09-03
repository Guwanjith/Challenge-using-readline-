//
//  main.m
//  Challenge: using readline()
//
//  Created by Guwanjith Tennekoon on 8/16/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>
#import <readline/history.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Get input for where to start counting down
        NSLog(@"Where should I start? ");
        const char *times = readline(NULL);
        NSString *start = [NSString stringWithUTF8String:times];
        
        //Convert input from ASCII to  integer
        NSInteger i = [start integerValue];
        
        //Countdown
        for (i=i; i>-1; i= i -3)
        {
            NSLog(@"%li\n", i);
            if (i% 5 == 0)
            {
                NSLog(@"Found One!\n");
            }
            
        }
        
    }
    return 0;
}
