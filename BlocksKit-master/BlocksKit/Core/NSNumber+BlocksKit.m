//
//  NSNumber+BlocksKit.m
//  BlocksKit
//

#import "NSNumber+BlocksKit.h"

@implementation NSNumber (BlocksKit)

- (void)bk_times:(void (^)())block
{
  NSParameterAssert(block != nil);

  for ( NSUInteger idx = 0 ; idx < self.integerValue ; ++idx ) {
    block();
  }
}

@end
