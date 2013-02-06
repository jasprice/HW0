//
//  CardGameViewController.m
//  Matchismo
//
//  Created by jasprice on 2/5/13.
//  Copyright (c) 2013 jasprice. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) PlayingCardDeck *deck;
@end

@implementation CardGameViewController

-(PlayingCardDeck *)deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    //self.flipCount++;
    
    Card *card = [self.deck drawRandomCard];
    if (card) {
        [sender setTitle:card.contents forState:UIControlStateSelected];
        self.flipCount++;
    } else {
        [sender setTitle:@"X" forState:UIControlStateSelected];
        self.flipsLabel.text = @"This deck is empty";
    }
}

@end
