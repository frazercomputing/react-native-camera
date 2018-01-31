#import "CameraFocusSquare.h"
#import <QuartzCore/QuartzCore.h>

const float squareLength = 80.0f;
@implementation RCTCameraFocusSquare

- (id)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

        [self setBackgroundColor:[UIColor clearColor]];
        [self.layer setBorderWidth:1];
        [self.layer setCornerRadius:1.0];
        [self.layer setBorderColor:[UIColor colorWithRed:1 green:0.8 blue:0 alpha:1].CGColor];

        CABasicAnimation* selectionAnimation = [CABasicAnimation
                                                animationWithKeyPath:@"borderColor"];
        selectionAnimation.toValue = (id)[UIColor colorWithRed:1 green:0.8 blue:0 alpha:0.66].CGColor;
        selectionAnimation.repeatCount = 4;
        selectionAnimation.duration = 0.5;
        [self.layer addAnimation:selectionAnimation
                          forKey:@"selectionAnimation"];
    }
    return self;
}
@end
