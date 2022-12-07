//
//  KayokoObserver.m
//  Kayoko
//
//  Created by Alexandra (@Traurige)
//

#import "KayokoObserver.h"

@implementation KayokoObserver
- (instancetype)init {
    self = [super init];

    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pasteboardChanged) name:UIPasteboardChangedNotification object:nil];
    }

    return self;
}

- (void)pasteboardChanged {
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), (CFStringRef)@"dev.traurige.kayoko.observer.pasteboard.changed", nil, nil, YES);
}
@end
