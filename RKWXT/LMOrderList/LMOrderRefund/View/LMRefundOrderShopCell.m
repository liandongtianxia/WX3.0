//
//  LMRefundOrderShopCell.m
//  RKWXT
//
//  Created by SHB on 15/12/16.
//  Copyright © 2015年 roderick. All rights reserved.
//

#import "LMRefundOrderShopCell.h"
#import "LMOrderListEntity.h"

@interface LMRefundOrderShopCell(){
    WXUILabel *nameLabel;
    WXUIImageView *arrowImgView;
}
@end

@implementation LMRefundOrderShopCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        CGFloat xOffset = 10;
        CGFloat imgWidth = 15;
        CGFloat imgHeight = imgWidth;
        WXUIImageView *imgView = [[WXUIImageView alloc] init];
        imgView.frame = CGRectMake(xOffset, (LMRefundOrderShopCellHeight-imgHeight)/2, imgWidth, imgHeight);
        [imgView setImage:[UIImage imageNamed:@"LMSellerIcon.png"]];
        [self.contentView addSubview:imgView];
        
        xOffset += imgWidth+10;
        CGFloat nameLabelWidth = 150;
        CGFloat nameLabelheight = 20;
        nameLabel = [[WXUILabel alloc] init];
        nameLabel.frame = CGRectMake(xOffset, (LMRefundOrderShopCellHeight-nameLabelheight)/2, nameLabelWidth, nameLabelheight);
        [nameLabel setBackgroundColor:[UIColor clearColor]];
        [nameLabel setTextAlignment:NSTextAlignmentLeft];
        [nameLabel setTextColor:WXColorWithInteger(0x000000)];
        [nameLabel setFont:WXFont(15.0)];
        [self.contentView addSubview:nameLabel];
        
        xOffset += nameLabelWidth+10;
        CGFloat width = 8;
        CGFloat height = 12;
        arrowImgView = [[WXUIImageView alloc] init];
        arrowImgView.frame = CGRectMake(xOffset, (LMRefundOrderShopCellHeight-height)/2, width, height);
        [arrowImgView setBackgroundColor:[UIColor clearColor]];
        [arrowImgView setImage:[UIImage imageNamed:@"T_ArrowRight.png"]];
        [self.contentView addSubview:arrowImgView];
    }
    return self;
}

-(void)load{
    LMOrderListEntity *entity = self.cellInfo;
    
    [nameLabel setText:entity.shopName];
    
    CGRect rect = nameLabel.frame;
    rect.size.width = [NSString widthForString:entity.shopName fontSize:15.0 andHeight:20];
    [nameLabel setFrame:rect];
    
    CGRect rect1 = arrowImgView.frame;
    rect1.origin.x = rect.size.width+rect.origin.x+10;
    [arrowImgView setFrame:rect1];
}

@end
