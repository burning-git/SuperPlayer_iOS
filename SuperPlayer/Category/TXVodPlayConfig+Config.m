//
//  TXVodPlayConfig+Config.m
//  SuperPlayer
//
//  Created by git burning on 2019/6/18.
//

#import "TXVodPlayConfig+Config.h"
#import <objc/runtime.h>

static char const * const tablewCellButtonBlcok = "tablewCellButtonBlcok";

@implementation TXVodPlayConfig (Config)
-(void)setCertificate:(NSData *)certificate{
    objc_setAssociatedObject(self, &tablewCellButtonBlcok, certificate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSData *)certificate{
    return objc_getAssociatedObject(self, tablewCellButtonBlcok);

}
@end
