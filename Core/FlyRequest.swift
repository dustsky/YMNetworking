//
//  FlyRequest.swift
//  FlyNet
//
//  Created by DUSTSKY on 2019/8/30.
//  Copyright © 2019 DUSTSKY. All rights reserved.
//

import Foundation


struct FlyRequestHeader : FlyRequestHeaderProtocol {
    
}

struct FlyRequestContent<T> : FlyRequestContentProtocol {
    var data : T?
    
}

struct FlyRequestConfigure : FlyRequestConfigureProtocol {
    
}

struct FlyRequest<T> {
    var header : FlyRequestHeader?
    var content : FlyRequestContent<T>?
}
