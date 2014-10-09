// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from nested_collection.djinni

#import "DBNestedCollection+Private.h"
#import <Foundation/Foundation.h>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation DBNestedCollection

- (id)initWithNestedCollection:(DBNestedCollection *)nestedCollection
{
    if (self = [super init]) {
        _setList = [NSMutableArray arrayWithCapacity:[nestedCollection.setList count]];
        for (NSMutableSet *currentValue_0 in nestedCollection.setList) {
            id copiedValue_0;
            copiedValue_0 = [NSMutableSet setWithCapacity:[currentValue_0 count]];
            for (NSString *currentValue_1 in currentValue_0) {
                id copiedValue_1;
                copiedValue_1 = [currentValue_1 copy];
                [copiedValue_0 addObject:copiedValue_1];
            }
            [_setList addObject:copiedValue_0];
        }
    }
    return self;
}

- (id)initWithSetList:(NSMutableArray *)setList
{
    if (self = [super init]) {
        _setList = setList;
    }
    return self;
}

- (id)initWithCppNestedCollection:(const NestedCollection &)nestedCollection
{
    if (self = [super init]) {
        _setList = [NSMutableArray arrayWithCapacity:nestedCollection.set_list.size()];
        for (const auto & cppValue_0 : nestedCollection.set_list) {
            NSMutableSet *objcValue_0 = [NSMutableSet setWithCapacity:cppValue_0.size()];
            for (const auto & cppValue_1 : cppValue_0) {
                NSString *objcValue_1 = [[NSString alloc] initWithBytes:cppValue_1.data()
                        length:cppValue_1.length()
                        encoding:NSUTF8StringEncoding];
                [objcValue_0 addObject:objcValue_1];
            }
            [_setList addObject:objcValue_0];
        }
    }
    return self;
}

- (NestedCollection)cppNestedCollection
{
    std::vector<std::unordered_set<std::string>> setList;
    setList.reserve([_setList count]);
    for (NSMutableSet *objcValue_0 in _setList) {
        std::unordered_set<std::string> cppValue_0;
        for (NSString *objcValue_1 in objcValue_0) {
            std::string cppValue_1([objcValue_1 UTF8String], [objcValue_1 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
            cppValue_0.insert(std::move(cppValue_1));
        }
        setList.push_back(std::move(cppValue_0));
    }
    return NestedCollection(
            std::move(setList));
}

@end
