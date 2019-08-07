//
//  main.m
//  ContactList
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *menuList = @"\nMenu:\nnew - Create a new contact\nlist - List all contacts\nquit - Exit application\nChoose an option?";
        NSString *menuOption = @"";
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        
        while (![menuOption  isEqual: @"quit"]) {
            menuOption =[inputCollector inputForPrompt: menuList];
            
            if ([menuOption  isEqual: @"new"]) {
                
                NSLog(@"\n---Enter New Contact Information-----------------");
                NSString *fullName,*email;
                fullName =  menuOption =[inputCollector inputForPrompt: @"\nEnter FullName:"];
                email =  menuOption =[inputCollector inputForPrompt: @"\nEnter Email:"];
                Contact *newContact = [[Contact alloc] initWithFullName:fullName email:email];
                [contactList addContact:newContact];
                NSLog(@"\n---New Contact Added Successfuly!-----------------");
                
            }
            
            if ([menuOption  isEqual: @"list"]) {
                
                NSLog(@"\n---Start List-----------------");
                [contactList printList];
                NSLog(@"\n---End List-----------------");
                
            }
        }
        
    }
    return 0;
}
