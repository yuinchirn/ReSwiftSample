//
//  ConterReducer.swift
//  ReSwiftSample
//
//  Created by Yuta Chiba on 2016/04/02.
//  Copyright © 2016年 yuinchirn. All rights reserved.
//

import Foundation
import ReSwift

struct CounterReducer: Reducer {
    
    func handleAction(action: Action, state: AppState?) -> AppState {
        var state = state ?? AppState()
        
        switch action {
        case _ as CounterActionIncrease:
            state.counter += 1
        case _ as CounterActionDecrease:
            state.counter -= 1
        default:
            break
        }
        
        return state
    }
    
}