//
//  WeatherManager.swift
//  WoWonderiOS
//
//  Created by Muhammad's Macbook pro on 09/07/2021.
//  Copyright © 2021 clines329. All rights reserved.
//

import Foundation
import Alamofire
import WoWonderTimelineSDK
class WeatherManager{
    
    
    func getWeather(completionBlock : @escaping (_ Success: [String:Any]?, Error?)->()){
        
//        let params = [APIClient.Params.serverKey:APIClient.SERVER_KEY.Server_Key,APIClient.Params.limit:20,APIClient.Params.off_set:offset] as [String : Any]
//        let access_token = "\("?")\("access_token")\("=")\(UserData.getAccess_Token()!)"
        
        let url = "https://api.weatherapi.com/v1/forecast.json?key=e7cffc4d6a9a4a149a1113143201711&q=istanbul&lang=en"
        AF.request(url, method: .post, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            if (response.value != nil){
                guard let res = response.value as? [String:Any] else {return}
//                guard let location = res["location"] as? [String:Any] else {return}
                completionBlock(res,nil)
            }else{
                completionBlock(nil, response.error)
            }
            }
            
        }
    
    
static let sharedInstance = WeatherManager()
//    private init() {}

}
