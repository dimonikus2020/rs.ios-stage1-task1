#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *happyArray = [[NSMutableArray alloc] init];

    if (sadArray.count != 0) {
        [happyArray addObject: [sadArray firstObject]];
        for (NSUInteger i = 1; i < sadArray.count-1; i++) {
            int first = [[sadArray objectAtIndex:i-1] intValue];
            int main = [[sadArray objectAtIndex:i] intValue];
            int second = [[sadArray objectAtIndex:i+1] intValue];
            if (main < (first + second)) {
                [happyArray addObject: [sadArray objectAtIndex:i]];
                for (NSUInteger i = 1; i < happyArray.count-1; i++) {
    int first = [[happyArray objectAtIndex:i-1] intValue];
                    int main = [[happyArray objectAtIndex:i] intValue];
                    int second = [[happyArray objectAtIndex:i+1] intValue];
                    if (main > (first + second)) {
                        [happyArray removeObjectAtIndex:i];
                    }
                }
            }
        }
    } else {
        NSArray *happyArray = [[NSArray alloc] init];
        return happyArray;
    }
    [happyArray addObject: [sadArray lastObject]];
    NSArray *happyArray_result = [[NSArray alloc] initWithArray:happyArray];
    return happyArray_result;
}
@end

