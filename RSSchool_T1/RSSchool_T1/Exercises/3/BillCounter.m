#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    int jointBill = 0;
    int annas = 0;
    for (int i = 0; i < [bill count]; i++) {
        if (i != index) {
            jointBill = jointBill + [[bill objectAtIndex:i] intValue];
        }
    }
    annas = jointBill/2;
    if (annas != [sum intValue]) {
        int result = [sum intValue] - annas;
        return [NSString stringWithFormat:(@"%i"), result];
    }
    else {
        return @"Bon Appetit";
    }
}
@end
