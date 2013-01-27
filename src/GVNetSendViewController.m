//
//  GVNetSendViewController.m
//  VST3NetSend
//
//  Created by Volodymyr Gorlov on 1/14/13.
//  Copyright (c) 2013 Vlad Gorloff. All rights reserved.
//

@interface GVNetSendViewController ()
{
    
}

@end

@implementation GVNetSendViewController

-(void) privateInit
{
    _model = [[GVNetSendModel alloc] init];
    _modelController = [[NSObjectController alloc] initWithContent:_model];
}

-(void) privateDealloc
{
    _modelController = nil;
    _model = nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self privateInit];
    }
    return self;
}

- (void)dealloc
{
    [self removeBindings];
    [self privateDealloc];
}

-(void) awakeFromNib
{
    [self setupBindings];

    GVIntegerFormatter* formatter = [[GVIntegerFormatter alloc] init];
    [self.port.cell setFormatter:formatter];
}

-(void) setupBindings
{
    GVConnectionFlagTransformer* connectionFlagTransformer = [[GVConnectionFlagTransformer alloc] init];
    NSDictionary* connectionButtonTitleBindingOptions = [NSDictionary dictionaryWithObject:connectionFlagTransformer forKey:NSValueTransformerBindingOption];

    GVConnectionStatusTransformer* connectionStatusTransformer = [[GVConnectionStatusTransformer alloc] init];
    NSDictionary* connectionStatusBindingOptions = [NSDictionary dictionaryWithObject:connectionStatusTransformer forKey:NSValueTransformerBindingOption];
    
    NSDictionary* bindingOptions = [NSDictionary dictionaryWithObject:@"" forKey:NSNullPlaceholderBindingOption];
    
    [self.status bind:@"value" toObject:_modelController withKeyPath:@"selection.status" options:connectionStatusBindingOptions];
    [self.connectionFlag bind:@"value" toObject:_modelController withKeyPath:@"selection.connectionFlag" options:nil];
    [self.connectionFlag bind:@"title" toObject:_modelController withKeyPath:@"selection.connectionFlag" options:connectionButtonTitleBindingOptions];
    [self.dataFormat bind:@"selectedTag" toObject:_modelController withKeyPath:@"selection.dataFormat" options:nil];
    [self.port bind:@"value" toObject:_modelController withKeyPath:@"selection.port" options:nil];
    [self.bonjourName bind:@"value" toObject:_modelController withKeyPath:@"selection.bonjourName" options:bindingOptions];
    [self.password bind:@"value" toObject:_modelController withKeyPath:@"selection.password" options:bindingOptions];
}

-(void) removeBindings
{
    [self.status unbind:@"value"];
    [self.connectionFlag unbind:@"value"];
    [self.dataFormat unbind:@"selectedTag"];
    [self.port unbind:@"value"];
    [self.bonjourName unbind:@"value"];
    [self.password unbind:@"value"];
}

@end