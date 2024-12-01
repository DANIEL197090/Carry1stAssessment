//
//  NetworkManager.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import UIKit
final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://my-json-server.typicode.com/carry1stdeveloper/mock-product-api/"
    private let productsURL =  baseURL + "productBundles"
    
    private init() {}
    func getAllProducts(completed: @escaping (Result<[Product], APError>) -> Void) {
        guard let url = URL(string: productsURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode([Product].self, from: data)
                completed(.success(decodedResponse))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }

    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void ) {
         
         let cacheKey = NSString(string: urlString)
         
         if let image = cache.object(forKey: cacheKey) {
             completed(image)
             return
         }
         
         guard let url = URL(string: urlString) else {
             completed(nil)
             return
         }
         
         let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
             
             guard let data, let image = UIImage(data: data) else {
                 completed(nil)
                 return
             }
             
             self.cache.setObject(image, forKey: cacheKey)
             completed(image)
         }
         
         task.resume()
     }
}
