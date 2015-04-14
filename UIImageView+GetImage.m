//
//  UIImageView+GetImage.m
//  网易新闻
//
//  Created by jerehedu on 15/3/20.
//  Copyright (c) 2015年 jerehedu. All rights reserved.
//

#import "UIImageView+GetImage.h"

@implementation UIImageView (GetImage)
+(UIImage *)getImageWithBundleName:(NSString *)bundleName andImageName:(NSString *)imageName
{
 NSBundle *bundle=[NSBundle bundleWithPath:[[NSBundle mainBundle]pathForResource:bundleName ofType:@"bundle"]];
    
    UIImage *image=[[UIImage alloc]initWithContentsOfFile:[bundle pathForResource:imageName ofType:@"png"]];
    if (image==nil) {
        image=[[UIImage alloc]initWithContentsOfFile:[bundle pathForResource:imageName ofType:@"jpg"]];
    }
    return image;
}
-(void)setImageWithBundle:(NSString *)bundle andName:(NSString *)name
{
    [self setImage: [UIImageView getImageWithBundleName:bundle andImageName:name]];
}
@end
