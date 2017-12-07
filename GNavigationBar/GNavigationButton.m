//
//  GNavigationButton
//  
//
//  Created by GIKI on 2017/4/6.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import "GNavigationButton.h"

@implementation GNavigationButton

- (void)setTitle:(NSString*)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    
    //根据设置的文字字体大小来计算文本的尺寸
    
    CGSize titleSize = [title sizeWithFont:self.titleLabel.font];
    
    //按钮的宽度
    CGRect rect = self.frame;
    
    rect.size.width= titleSize.width;
    rect.size.height = 23;
    self.frame = rect;
}


@end
