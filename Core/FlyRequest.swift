//
//  FlyRequest.swift
//  FlyNet
//
//  Created by DUSTSKY on 2019/8/30.
//  Copyright © 2019 DUSTSKY. All rights reserved.
//

import Foundation


class FlyRequestHeader : FlyAbsRequestHeaderProtocol {
    
    
}


class DefalutRequestHeader : FlyRequestHeader {
    var shopId : String?
    var brandId : String?
    
    class func defaultHeader() -> Dictionary<String, Any> {
        return Dictionary()
    }
    
    required init(shopId : String?, brandId : String?) {
        self.shopId = shopId
        self.brandId = brandId
    }
    
    convenience init(brandId : String) {
        self.init(shopId: nil, brandId: brandId)
    }
}

struct FlyRequestContent<T> : FlyAbsRequestContentProtocol {
    var data : T?
}

struct FlyRequestConfigure : FlyAbsRequestConfigureProtocol {
    
}

struct FlyRequest<T> {
    var header : FlyRequestHeader?
    var content : FlyRequestContent<T>?
    
    
}
