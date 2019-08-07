//
//  InputCollector.h
//  ContactList
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString;

@end

NS_ASSUME_NONNULL_END
