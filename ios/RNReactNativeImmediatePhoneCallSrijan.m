
#import "RNReactNativeImmediatePhoneCallSrijan.h"

@implementation RNReactNativeImmediatePhoneCallSrijan

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(immediatePhoneCall:(NSString *)number)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", number]]];
    });
};

@end
  