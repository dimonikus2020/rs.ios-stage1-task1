#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSMutableArray *resultArray = [NSMutableArray new];
    for (int i = 0; i < [array count]; i++) {
        int sum = 0;
        for (int x = 0; x < [array count]; x++) {
            if (x != i) {
                int current =[(NSNumber *)[array objectAtIndex:x] intValue];
                sum = sum + current;
            }
        }
        [resultArray addObject:@(sum)];
    }
    NSNumber *minSum=[resultArray valueForKeyPath:@"@min.intValue"];
    NSNumber *maxSum=[resultArray valueForKeyPath:@"@max.intValue"];
    return @[minSum,maxSum];
}

@end
