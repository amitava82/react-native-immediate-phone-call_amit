#import "RNReactNativeImmediatePhoneCallSrijan.h"

@implementation RNReactNativeImmediatePhoneCallSrijan

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(immediatePhoneCall:(NSString *)number)
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", number]]];
};

@end
