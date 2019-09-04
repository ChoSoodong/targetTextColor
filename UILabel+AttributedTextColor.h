







#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (AttributedTextColor)


/**
 给label中指定的文字设置颜色

 @param targetColor 指定的颜色
 @param targetText 指定的文字
 @return label
 */
-(instancetype)setTargetTextColor:(UIColor *)targetColor andTargetText:(NSString *)targetText;

@end

NS_ASSUME_NONNULL_END
