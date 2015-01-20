#import "DirectoryMO.h"

@implementation DirectoryMO

- (NSImage *)icon
{
    if ([self.itemType isEqualToString:@"regular"]) {
        return [NSImage imageNamed:NSImageNameFolder];
    } else if ([self.itemType isEqualToString:@"smart"]) {
        return [NSImage imageNamed:NSImageNameFolderSmart];
    } else {
        return [NSImage imageNamed:NSImageNameFolder];
    }
}

- (NSDictionary *)dictValue
{
	return [NSDictionary dictionaryWithObjectsAndKeys:
			self.title, @"title",
			@"", @"subtitle",
			[self icon], @"icon",
			nil];
}

@end
