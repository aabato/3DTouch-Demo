//
//  TestVC.m
//  3D-touch-demo
//
//  Created by Angelica Bato on 3/15/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

#import "PeekPopVC.h"

@interface PeekPopVC ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pictureView;
@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;


@end

@implementation PeekPopVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.student.firstName, self.student.lastName];
    self.pictureView.image = self.student.funnyPicture;
    self.funFactLabel.text = self.student.funFact;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
