// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to User.m instead.

#import "_User.h"

@implementation UserID
@end

@implementation _User

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"User";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"User" inManagedObjectContext:moc_];
}

- (UserID*)objectID {
	return (UserID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"identiferValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"identifer"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"nicknameValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"nickname"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic identifer;

- (BOOL)identiferValue {
	NSNumber *result = [self identifer];
	return [result boolValue];
}

- (void)setIdentiferValue:(BOOL)value_ {
	[self setIdentifer:@(value_)];
}

- (BOOL)primitiveIdentiferValue {
	NSNumber *result = [self primitiveIdentifer];
	return [result boolValue];
}

- (void)setPrimitiveIdentiferValue:(BOOL)value_ {
	[self setPrimitiveIdentifer:@(value_)];
}

@dynamic nickname;

- (BOOL)nicknameValue {
	NSNumber *result = [self nickname];
	return [result boolValue];
}

- (void)setNicknameValue:(BOOL)value_ {
	[self setNickname:@(value_)];
}

- (BOOL)primitiveNicknameValue {
	NSNumber *result = [self primitiveNickname];
	return [result boolValue];
}

- (void)setPrimitiveNicknameValue:(BOOL)value_ {
	[self setPrimitiveNickname:@(value_)];
}

@end

@implementation UserAttributes 
+ (NSString *)identifer {
	return @"identifer";
}
+ (NSString *)nickname {
	return @"nickname";
}
@end

