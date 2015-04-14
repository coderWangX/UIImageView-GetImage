//
//  UIImageView+GetImage.h
//  网易新闻
//
//  Created by jerehedu on 15/3/20.
//  Copyright (c) 2015年 jerehedu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (GetImage)
+(UIImage *)getImageWithBundleName:(NSString *)bundleName andImageName:(NSString *)imageName;
-(void)setImageWithBundle:(NSString *)bundle andName:(NSString *)name;

@end
