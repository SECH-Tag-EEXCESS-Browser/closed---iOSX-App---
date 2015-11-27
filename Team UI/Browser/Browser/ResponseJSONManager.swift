//
//  ResponseJSONManager.swift
//  Browser
//
//  Created by Alexander Pöhlmann on 20.11.15.
//  Copyright © 2015 SECH-Tag-EEXCESS-Browser. All rights reserved.
//

import Foundation

class ResponseJSONManager {
    
    
    init(){
        
    }
    
    func sortRecommend(json:JSONObject){
        for sech in SechModel.instance.sechs{
            var array = [Response]()
            
            for result in json.getJSONArray("results")! {
                for singleResult in result.getJSONArray("result")!{
                    let str2 = sech.1.tags["link"]!.topic
                    if singleResult.getString("generatingQuery")?.rangeOfString((sech.1.tags["link"]!.topic)) != nil {
                        array.append(Response(result: singleResult))
                        print("\nFound:\n\(singleResult.convertToString())in \(str2)")
                    }
                }
            }
            SechModel.instance.sechs[sech.0]!.response = array
        }
    }
}

class DetailResponseJSONManager{
    
    func sortDetailRecommend(json:JSONObject){
        
    }
    
}