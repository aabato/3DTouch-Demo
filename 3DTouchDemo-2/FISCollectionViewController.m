//
//  FISCollectionViewController.m
//  3DTouchDemo-2
//
//  Created by Angelica Bato on 3/16/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

#import "FISCollectionViewController.h"

@interface FISCollectionViewController () <UICollectionViewDelegateFlowLayout, UIViewControllerPreviewingDelegate>

@property (strong, nonatomic) id previewingContext;

@end

@implementation FISCollectionViewController

//static NSString * const reuseIdentifier = @"Cell";

//Check if Force Touch is Available on the device by checking Trait Collections!
- (BOOL)isForceTouchAvailable {
    BOOL isForceTouchAvailable = NO;
    
    //Checking what our trait collection looks like
    NSLog(@"%@",self.traitCollection);
    
    //If traitCollection has a key:value for "forceTouchCapability"...
    if ([self.traitCollection respondsToSelector:@selector(forceTouchCapability)]) {
        
        //Get Value (Y/N) for forceTouchCapability
        isForceTouchAvailable = self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;
    }
    return isForceTouchAvailable;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Check if Force Touch is available
    
    if ([self isForceTouchAvailable]) {
        NSLog(@"About to set previewingContext");
        self.previewingContext = [self registerForPreviewingWithDelegate:self sourceView:self.view];
    }
    else {
        NSLog(@"Force Touch is not available!");
        [self unregisterForPreviewingWithContext:self.previewingContext];
        self.previewingContext = nil;
        
    }
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
        
    self.students = [FISStudent createFISClass];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Navigation

//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//
//}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.students.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"personCell" forIndexPath:indexPath];
    
    FISStudent *currentStudent = self.students[indexPath.row];
    cell.backgroundColor = [UIColor grayColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [self viewWidth]*0.333, [self viewWidth]*0.333)];
    imageView.image = currentStudent.cleanPicture;
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [cell.contentView addSubview:imageView];
    
    return cell;
}

- (CGFloat) viewWidth {
    return self.collectionView.bounds.size.width;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake([self viewWidth]*0.333, [self viewWidth]*0.333);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

#pragma mark <UICollectionViewDelegate>


// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}



// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


#pragma mark - Preview methods

- (UIViewController *)previewingContext:(id )previewingContext viewControllerForLocation:(CGPoint)location {
    NSLog(@"previewContext with return of UIViewController.");
    
    // check if we're not already displaying a preview controller
    if ([self.presentedViewController isKindOfClass:[UIViewController class]]) {
        return nil;
    }
    
    //Find location of the press and the cell it indicates
    CGPoint cellPostion = [self.collectionView convertPoint:location fromView:self.view];
    NSIndexPath *path = [self.collectionView indexPathForItemAtPoint:cellPostion];
    if (path) {
        
        //Pull storyboard and create instance of PeekPopVC
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        PeekPopVC *previewController = [storyboard instantiateViewControllerWithIdentifier:@"PeekPopVC"];
        previewController.student = [self.students objectAtIndex:path.item];
        
        NSLog(@"About to return PeekPopVC");
        return previewController;
    }
    
    NSLog(@"Returning nil!!!");
    return nil;
}

- (void)previewingContext:(id )previewingContext commitViewController: (UIViewController *)viewControllerToCommit {
    
    [self.navigationController showViewController:viewControllerToCommit sender:nil];
};




@end
