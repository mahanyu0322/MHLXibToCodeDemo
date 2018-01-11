//
//  CodeGenerationEntry.h
//  xibTest
//
//  Created by Sephiroth_Ma on 2018/1/4.
//  Copyright © 2018年 Sephiroth_Ma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class CodeGeneration;
@class MethodsEncapsulate;

@interface CodeGenerationEntry : NSObject

//////  会自动将xib 上的控件生成相应的代码，代码会保存在桌面自动生成的CodeThat文件夹内，有兴趣的小伙伴可以体验一下，因为在测试阶段，代码有些乱，功能有些不完善，有问题直接在加我QQ 656691922 我会及时改正，代码就先不开源了

/**
 将xib的Controller传入，生成代码

 @param view Controller
 @param isAutomatic 是否自动生成类名 YES 自动生成（如果想自己命名相关的层级及命名可选NO）建议填NO 自己命名，因为自动命名采用的是逻辑递增命名的 看着会比较乱~
 */
+ (void)codeGenerationEntryfromClass:(UIViewController *)view automaticGenerationHierarchy:(BOOL)isAutomatic;


/**
 针对Cell上的控件的代码生成，因为cell上的控件重用问题，用逻辑递增命名会超出预定命名数组的边界，所有需要使用者自己命名

 @param view 传入 self.contentView
 */
+ (void)codeGenerationEntryfromCell:(UIView *)view;

@end
