// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from test.djinni

#import "DBTestHelpersCppProxy+Private.h"
#import "DBClientInterfaceObjcProxy+Private.h"
#import "DBMapListRecord+Private.h"
#import "DBNestedCollection+Private.h"
#import "DBPrimitiveList+Private.h"
#import "DBSetRecord+Private.h"
#import "DJIError.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation DBTestHelpersCppProxy

- (id)initWithCpp:(const std::shared_ptr<TestHelpers> &)cppRef
{
    if (self = [super init]) {
        _cppRef = cppRef;
    }
    return self;
}

- (void)dealloc
{
    djinni::DbxCppWrapperCache<TestHelpers> & cache = djinni::DbxCppWrapperCache<TestHelpers>::getInstance();
    cache.remove(_cppRef);
}

+ (id)testHelpersWithCpp:(const std::shared_ptr<TestHelpers> &)cppRef
{
    djinni::DbxCppWrapperCache<TestHelpers> & cache = djinni::DbxCppWrapperCache<TestHelpers>::getInstance();
    return cache.get(cppRef, [] (const std::shared_ptr<TestHelpers> & p) { return [[DBTestHelpersCppProxy alloc] initWithCpp:p]; });
}

+ (DBSetRecord *)getSetRecord {
    try {
        SetRecord cppRet = TestHelpers::get_set_record();
        DBSetRecord *objcRet = [[DBSetRecord alloc] initWithCppSetRecord:cppRet];
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)checkSetRecord:(DBSetRecord *)rec {
    try {
        SetRecord cppRec = std::move([rec cppSetRecord]);
        bool cppRet = TestHelpers::check_set_record(std::move(cppRec));
        BOOL objcRet = (cppRet) ? YES : NO;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (DBPrimitiveList *)getPrimitiveList {
    try {
        PrimitiveList cppRet = TestHelpers::get_primitive_list();
        DBPrimitiveList *objcRet = [[DBPrimitiveList alloc] initWithCppPrimitiveList:cppRet];
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)checkPrimitiveList:(DBPrimitiveList *)pl {
    try {
        PrimitiveList cppPl = std::move([pl cppPrimitiveList]);
        bool cppRet = TestHelpers::check_primitive_list(std::move(cppPl));
        BOOL objcRet = (cppRet) ? YES : NO;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (DBNestedCollection *)getNestedCollection {
    try {
        NestedCollection cppRet = TestHelpers::get_nested_collection();
        DBNestedCollection *objcRet = [[DBNestedCollection alloc] initWithCppNestedCollection:cppRet];
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)checkNestedCollection:(DBNestedCollection *)nc {
    try {
        NestedCollection cppNc = std::move([nc cppNestedCollection]);
        bool cppRet = TestHelpers::check_nested_collection(std::move(cppNc));
        BOOL objcRet = (cppRet) ? YES : NO;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (NSMutableDictionary *)getMap {
    try {
        std::unordered_map<std::string, int64_t> cppRet = TestHelpers::get_map();
        NSMutableDictionary *objcRet = [NSMutableDictionary dictionaryWithCapacity:cppRet.size()];
        for (const auto & cppPair_0 : cppRet) {
            NSString *objcKey_0 = [[NSString alloc] initWithBytes:cppPair_0.first.data()
                    length:cppPair_0.first.length()
                    encoding:NSUTF8StringEncoding];
            NSNumber *objcValue_0 = [NSNumber numberWithLongLong:cppPair_0.second];
            [objcRet setObject:objcValue_0 forKey:objcKey_0];
        }
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)checkMap:(NSMutableDictionary *)m {
    try {
        std::unordered_map<std::string, int64_t> cppM;
        for (id objcKey_0 in m) {
            std::string cppKey_0([objcKey_0 UTF8String], [objcKey_0 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
            int64_t cppValue_0 = [[m objectForKey:objcKey_0] longLongValue];
            cppM.emplace(std::move(cppKey_0), std::move(cppValue_0));
        }
        bool cppRet = TestHelpers::check_map(std::move(cppM));
        BOOL objcRet = (cppRet) ? YES : NO;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (NSMutableDictionary *)getEmptyMap {
    try {
        std::unordered_map<std::string, int64_t> cppRet = TestHelpers::get_empty_map();
        NSMutableDictionary *objcRet = [NSMutableDictionary dictionaryWithCapacity:cppRet.size()];
        for (const auto & cppPair_0 : cppRet) {
            NSString *objcKey_0 = [[NSString alloc] initWithBytes:cppPair_0.first.data()
                    length:cppPair_0.first.length()
                    encoding:NSUTF8StringEncoding];
            NSNumber *objcValue_0 = [NSNumber numberWithLongLong:cppPair_0.second];
            [objcRet setObject:objcValue_0 forKey:objcKey_0];
        }
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)checkEmptyMap:(NSMutableDictionary *)m {
    try {
        std::unordered_map<std::string, int64_t> cppM;
        for (id objcKey_0 in m) {
            std::string cppKey_0([objcKey_0 UTF8String], [objcKey_0 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
            int64_t cppValue_0 = [[m objectForKey:objcKey_0] longLongValue];
            cppM.emplace(std::move(cppKey_0), std::move(cppValue_0));
        }
        bool cppRet = TestHelpers::check_empty_map(std::move(cppM));
        BOOL objcRet = (cppRet) ? YES : NO;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (DBMapListRecord *)getMapListRecord {
    try {
        MapListRecord cppRet = TestHelpers::get_map_list_record();
        DBMapListRecord *objcRet = [[DBMapListRecord alloc] initWithCppMapListRecord:cppRet];
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)checkMapListRecord:(DBMapListRecord *)m {
    try {
        MapListRecord cppM = std::move([m cppMapListRecord]);
        bool cppRet = TestHelpers::check_map_list_record(std::move(cppM));
        BOOL objcRet = (cppRet) ? YES : NO;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)checkClientInterfaceAscii:(id <DBClientInterface>)i {
    try {
        std::shared_ptr<ClientInterface> cppI = ::djinni_generated::ClientInterfaceObjcProxy::client_interface_with_objc(i);
        TestHelpers::check_client_interface_ascii(std::move(cppI));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)checkClientInterfaceNonascii:(id <DBClientInterface>)i {
    try {
        std::shared_ptr<ClientInterface> cppI = ::djinni_generated::ClientInterfaceObjcProxy::client_interface_with_objc(i);
        TestHelpers::check_client_interface_nonascii(std::move(cppI));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (NSNumber *)returnNone {
    try {
        std::experimental::optional<int32_t> cppRet = TestHelpers::return_none();
        NSNumber *objcRet;
        if (cppRet) {
            objcRet = [NSNumber numberWithInt:(*(cppRet))];
        } else {
            objcRet = nil;
        }
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

@end
