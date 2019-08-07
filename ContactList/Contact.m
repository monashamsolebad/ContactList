//
//  Contact.m
//  ContactList
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithFullName:(NSString *)fullName email:(NSString *)email{
    self = [super init];
    if (self) {
        self.fullName = fullName;
        self.email = email;
    }
    return self;
}

@end
