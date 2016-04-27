//
//  FISStudent.m
//  3D-touch-demo
//
//  Created by Angelica Bato on 3/15/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

-(instancetype)init {
    self = [self initWithFirstName:@"" lastName:@""];
    return self;
}

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    if (self) {
        _firstName=firstName;
        _lastName =lastName;
        _funFact = @"";
        _cleanPicture = nil;
        _funnyPicture = nil;
    }
    
    return self;
}

-(void)setCleanPicture:(UIImage *)cleanPicture {
    _cleanPicture = cleanPicture;
    _funnyPicture = cleanPicture;
}

+ (NSMutableArray *)createFISClass {
    FISStudent *brian = [[FISStudent alloc] initWithFirstName:@"Brian" lastName:@"Clouser"];
    brian.funFact = @"I was an extra on How I Met Your Mother and I swear I'm not a bro. (Love you Brian!)";
    brian.cleanPicture = [UIImage imageNamed:@"brian"];
    brian.funnyPicture = [UIImage imageNamed:@"brian2"];
    
    FISStudent *rosie = [[FISStudent alloc] initWithFirstName:@"Rosario" lastName:@"Tarabocchia"];
    rosie.funFact = @"It's my fault everyone has the Price is Right theme song in their head.";
    rosie.cleanPicture = [UIImage imageNamed:@"rosie"];
    rosie.funnyPicture = [UIImage imageNamed:@"rosie2"];
    
    FISStudent *ariel = [[FISStudent alloc] initWithFirstName:@"Ariel" lastName:@"Scott-Dicker"];
    ariel.funFact = @"Ask me to do the jack.";
    ariel.cleanPicture = [UIImage imageNamed:@"ariel2"];
    ariel.funnyPicture = [UIImage imageNamed:@"ariel"];

    FISStudent *angelica = [[FISStudent alloc] initWithFirstName:@"Angelica" lastName:@"Bato"];
    angelica.funFact = @"I've held a human brain in my hands twice.";
    angelica.cleanPicture = [UIImage imageNamed:@"angelica2"];
    angelica.funnyPicture = [UIImage imageNamed:@"angelica"];
    
    FISStudent *jeremy = [[FISStudent alloc] initWithFirstName:@"Jeremy" lastName:@"Feld"];
    jeremy.funFact = @"Adrian Brown is my nemesis.";
    jeremy.cleanPicture = [UIImage imageNamed:@"jeremy2"];
    jeremy.funnyPicture = [UIImage imageNamed:@"jeremy"];
    
    FISStudent *andre = [[FISStudent alloc] initWithFirstName:@"Andre" lastName:@"Creighton"];
    andre.funFact = @"I was wrong--the Jamaican food truck is pretty good.";
    andre.cleanPicture = [UIImage imageNamed:@"andre"];
    
    FISStudent *ian = [[FISStudent alloc] initWithFirstName:@"Ian" lastName:@"Rahman"];
    ian.funFact = @"Don't drink the British version of Four Loko, kids.";
    ian.cleanPicture = [UIImage imageNamed:@"ian"];
    ian.funnyPicture = [UIImage imageNamed:@"ian2"];
    
    FISStudent *chris = [[FISStudent alloc] initWithFirstName:@"Chris" lastName:@"Fleisher"];
    chris.funFact = @"Dad of the year";
    chris.cleanPicture = [UIImage imageNamed:@"chris"];
    chris.funnyPicture = [UIImage imageNamed:@"chris2"];
    
    FISStudent *mariya = [[FISStudent alloc] initWithFirstName:@"Mariya" lastName:@"Eggensperger"];
    mariya.funFact = @"I am originally from Los Angeles and only recently moved to New York this September";
    mariya.cleanPicture = [UIImage imageNamed:@"mariya"];
    
    FISStudent *dimitry = [[FISStudent alloc] initWithFirstName:@"Dimitry" lastName:@"Knyajanski"];
    dimitry.funFact = @"I have a stash of coffee cups. (Shh) Also, check out my app! YapTap";
    dimitry.cleanPicture = [UIImage imageNamed:@"dimitry"];
    
    FISStudent *kayla = [[FISStudent alloc] initWithFirstName:@"Kayla" lastName:@"Galway"];
    kayla.funFact = @"I'm a viscious Roller Derby player";
    kayla.cleanPicture = [UIImage imageNamed:@"kayla"];
    kayla.funnyPicture = [UIImage imageNamed:@"kayla2"];
    
    FISStudent *sam = [[FISStudent alloc] initWithFirstName:@"Sam" lastName:@"Boyce"];
    sam.funFact = @"Please stop me when I open Reddit. Please.";
    sam.cleanPicture = [UIImage imageNamed:@"sam"];
    
    FISStudent *adrian = [[FISStudent alloc] initWithFirstName:@"Adrian" lastName:@"Brown"];
    adrian.funFact = @"Jeremy is NOT faster than me.";
    adrian.cleanPicture = [UIImage imageNamed:@"adrian"];

    
    FISStudent *zirui = [[FISStudent alloc] initWithFirstName:@"Zirui" lastName:@"Branton"];
    zirui.funFact = @"I may or may not be able to do a back flip off of one of the orange chairs.";
    zirui.cleanPicture = [UIImage imageNamed:@"zirui"];

    
    FISStudent *dan = [[FISStudent alloc] initWithFirstName:@"Daniel" lastName:@"Adeyanju"];
    dan.funFact = @"Work, work, work, work, work He see me do mi dirt dirt dirt dirt dirt";
    dan.cleanPicture = [UIImage imageNamed:@"dan"];

    
    FISStudent *dylan = [[FISStudent alloc] initWithFirstName:@"Dylan" lastName:@"Straughan"];
    dylan.funFact = @"My alter ego is Pretentious Dylan. He's from Santiago, and comes out when there's food and wine.";
    dylan.cleanPicture = [UIImage imageNamed:@"dylan"];
    dylan.funnyPicture = [UIImage imageNamed:@"dylan2"];
    
    FISStudent *susan = [[FISStudent alloc] initWithFirstName:@"Susan" lastName:@"LoVaglio"];
    susan.funFact = @"I was a kickass jet engine mechanic for 10 years in the Navy";
    susan.cleanPicture = [UIImage imageNamed:@"susan"];
    
    FISStudent *andy = [[FISStudent alloc] initWithFirstName:@"Andy" lastName:@"Novack"];
    andy.funFact = @"I am a joke ninja. You never know when I'm going to attack.";
    andy.cleanPicture = [UIImage imageNamed:@"andy"];

    
    FISStudent *andreas = [[FISStudent alloc] initWithFirstName:@"Andreas" lastName:@"Vestergaard"];
    andreas.funFact= @"I own a death machine, A.K.A. motorized longboard.";
    andreas.cleanPicture = [UIImage imageNamed:@"andreas"];

    
    FISStudent *lisa = [[FISStudent alloc] initWithFirstName:@"Lisa" lastName:@"Pizza"];
    lisa.funFact = @"I have a black puffball of a bunny that I dearly love.";
    lisa.cleanPicture = [UIImage imageNamed:@"lisa"];
    lisa.funnyPicture = [UIImage imageNamed:@"lisa2"];
    
    FISStudent *federico = [[FISStudent alloc] initWithFirstName:@"Federico" lastName:@"Paliotta"];
    federico.funFact = @"I do parkour";
    federico.cleanPicture = [UIImage imageNamed:@"federico"];
    
    
    NSMutableArray *theBestClassEver = [NSMutableArray new];
    [theBestClassEver addObjectsFromArray:@[brian, rosie, ariel]];
    [theBestClassEver addObjectsFromArray:@[angelica, jeremy, andre]];
    [theBestClassEver addObjectsFromArray:@[ian, chris, mariya]];
    [theBestClassEver addObjectsFromArray:@[dimitry, kayla, sam]];
    [theBestClassEver addObjectsFromArray:@[adrian, zirui, dan]];
    [theBestClassEver addObjectsFromArray:@[dylan, susan, andy]];
    [theBestClassEver addObjectsFromArray:@[andreas, lisa, federico]];
    
    return theBestClassEver;
}


@end
