//
//  Created by 庞辉 on 12/5/14.
//  Copyright (c) 2014 庞辉. All rights reserved.
//


#import "TTURLAction.h"

// Core
#import "TTCorePreprocessorMacros.h"
#import "TTDebug.h"


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation TTURLAction

@synthesize urlPath       = _urlPath;
@synthesize parentURLPath = _parentURLPath;
@synthesize query         = _query;
@synthesize animated      = _animated;
@synthesize sourceRect    = _sourceRect;
@synthesize sourceView    = _sourceView;
@synthesize sourceButton  = _sourceButton;
@synthesize transition    = _transition;
@synthesize ifNeedPresent = _ifNeedPresent;


///////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)action {
  return [[[self alloc] init] autorelease];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)actionWithURLPath:(NSString*)urlPath {
  return [[[self alloc] initWithURLPath:urlPath] autorelease];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithURLPath:(NSString*)urlPath {
	self = [super init];
  if (self) {
    self.urlPath = urlPath;
    self.animated = YES;
    self.transition = UIViewAnimationTransitionNone;
    self.ifNeedPresent = YES;
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
	self = [self initWithURLPath:nil];
  if (self) {
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)dealloc {
  TT_RELEASE_SAFELY(_urlPath);
  TT_RELEASE_SAFELY(_parentURLPath);
  TT_RELEASE_SAFELY(_query);
  TT_RELEASE_SAFELY(_sourceView);
  TT_RELEASE_SAFELY(_sourceButton);

  [super dealloc];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyParentURLPath:(NSString*)parentURLPath {
  self.parentURLPath = parentURLPath;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyQuery:(NSDictionary*)query {
  self.query = query;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyAnimated:(BOOL)animated {
  self.animated = animated;
  return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyIfNeedPresent:(BOOL)ifNeedPresent{
    self.ifNeedPresent = ifNeedPresent;
    return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applySourceRect:(CGRect)sourceRect {
  self.sourceRect = sourceRect;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applySourceView:(UIView*)sourceView {
  self.sourceView = sourceView;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applySourceButton:(UIBarButtonItem*)sourceButton {
  self.sourceButton = sourceButton;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyTransition:(UIViewAnimationTransition)transition {
  self.transition = transition;
  return self;
}


@end