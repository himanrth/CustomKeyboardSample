//
//  KeyboardViewController.m
//  HimanthKeyboard
//
//  Created by Himanth Maddi on 15/11/17.
//  Copyright © 2017 MTAP. All rights reserved.
//

#import "KeyboardViewController.h"

@interface KeyboardViewController ()

@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *customKeyBoardview = [[[NSBundle mainBundle]loadNibNamed:@"HimanthKeyboardView" owner:self options:nil] objectAtIndex:0];
    [self.view addSubview:customKeyBoardview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    
}

- (void)textDidChange:(id<UITextInput>)textInput {
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
}
-(IBAction)tapOnEachButton:(UIButton *)sender{
    if ([sender.titleLabel.text isEqualToString:@"☛"]){
        [self.textDocumentProxy insertText:@"☛"];
    }else if ([sender.titleLabel.text isEqualToString:@"✺"]){
        [self.textDocumentProxy insertText:@"✺"];
    }else if ([sender.titleLabel.text isEqualToString:@"♛"]){
        [self.textDocumentProxy insertText:@"♛"];
    }else if ([sender.titleLabel.text isEqualToString:@"♧"]){
        [self.textDocumentProxy insertText:@"♧"];
    }else if ([sender.titleLabel.text isEqualToString:@"®"]){
        [self.textDocumentProxy insertText:@"®"];
    }else if ([sender.titleLabel.text isEqualToString:@"❢"]){
        [self.textDocumentProxy insertText:@"❢"];
    }
}
-(IBAction)nextKeyboard:(UIButton *)sender{
    [self advanceToNextInputMode];
}
@end
