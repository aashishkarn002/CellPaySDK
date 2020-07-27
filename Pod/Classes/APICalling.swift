//
//  APICalling.swift
//  MyFramework
//
//  Created by Cellcom on 7/26/20.
//

import Foundation
public class ApiCalling:NSObject {
    
    let apiClient = APIClient()
    
    
    func userLogin(userName:String,password:String,completion:@escaping ResultCallback<LoginResponse>){
        self.apiClient.sendRequest(WebService.login, parameters:["authType":"SESSION"],method: HTTPMethod.post.rawValue, userName:userName,password: password) { (status) in
            switch status {
            case .success(let data):
                guard let response = try? data.decode(to: LoginResponse.self) else {
                    completion(.failure(APIError.decoding))
                    return
                }
                 UserInfo.sharedInstance.setUserInfo(userInfo: response)
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    func getCellPayBankAccoutList(completion:@escaping ResultCallback<BankAccountResponse>){
        self.apiClient.sendRequest(WebService.accounts, parameters: nil, method: HTTPMethod.get.rawValue) { (status) in
            switch status {
            case .success(let data):
                guard let response = try? data.decode(to: BankAccountResponse.self) else {
                    completion(.failure(APIError.decoding))
                    return
                }
                
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
    func callMemberPayments(parameters:[String: Any]?,completion:@escaping ResultCallback<PaymentMerchantResponse>) {
        self.apiClient.sendRequest(WebService.memberPayment, parameters: parameters, method: HTTPMethod.post.rawValue) { (status) in
            switch status {
            case .success(let data):
                guard let response = try? data.decode(to: PaymentMerchantResponse.self) else {
                    completion(.failure(APIError.decoding))
                    return
                }
                
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    func callConfirmMemberPayments(parameters:[String: Any]?,completion:@escaping ResultCallback<PaymentMerchantResponse>) {
        self.apiClient.sendRequest(WebService.confirmMemberPayment, parameters: parameters, method: HTTPMethod.post.rawValue) { (status) in
            switch status {
            case .success(let data):
                guard let response = try? data.decode(to: PaymentMerchantResponse.self) else {
                    completion(.failure(APIError.decoding))
                    return
                }
                
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
