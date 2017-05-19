// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to User.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface UserID : NSManagedObjectID {}
@end

@interface _User : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) UserID *objectID;

@property (nonatomic, strong, nullable) NSNumber* identifer;

@property (atomic) BOOL identiferValue;
- (BOOL)identiferValue;
- (void)setIdentiferValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* nickname;

@property (atomic) BOOL nicknameValue;
- (BOOL)nicknameValue;
- (void)setNicknameValue:(BOOL)value_;

@end

@interface _User (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSNumber*)primitiveIdentifer;
- (void)setPrimitiveIdentifer:(nullable NSNumber*)value;

- (BOOL)primitiveIdentiferValue;
- (void)setPrimitiveIdentiferValue:(BOOL)value_;

- (nullable NSNumber*)primitiveNickname;
- (void)setPrimitiveNickname:(nullable NSNumber*)value;

- (BOOL)primitiveNicknameValue;
- (void)setPrimitiveNicknameValue:(BOOL)value_;

@end

@interface UserAttributes: NSObject 
+ (NSString *)identifer;
+ (NSString *)nickname;
@end

NS_ASSUME_NONNULL_END
