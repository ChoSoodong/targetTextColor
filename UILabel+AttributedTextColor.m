







#import "UILabel+AttributedTextColor.h"

@implementation UILabel (AttributedTextColor)

-(instancetype)setTargetTextColor:(UIColor *)targetColor andTargetText:(NSString *)targetText{
    
    //判空
    if (targetText == nil || [targetText isEqualToString:@""] || (targetText.length  > self.text.length)) {
        return self;
    }
    
    //设置默认颜色
    if (targetColor == nil) {
        targetColor = [UIColor redColor];
    }
    
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:self.text];
    //目标文字在全部文字中的位置
    NSRange range = [self.text rangeOfString:targetText];
    [attrString addAttribute:NSForegroundColorAttributeName
                       value:targetColor
                       range:range];
    self.attributedText = attrString;
    
    return self;
}

@end
