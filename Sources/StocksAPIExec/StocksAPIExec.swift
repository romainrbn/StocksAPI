//
//  StocksAPIExec.swift
//  
//
//  Created by Romain Rabouan on 12/09/2022.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
    /// Entry point for the executable
    static func main() async {
//        let (data, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v7/finance/quote?symbols=AAPL,MSFT,GOOG,TSLA")!)
//
//        let quoteResponse = try! JSONDecoder().decode(QuoteResponse.self, from: data)
//
//        print(quoteResponse)
        
        let (searchData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v1/finance/search?q=Tesla")!)
        
        let searchResponse = try! JSONDecoder().decode(SearchTickersResponse.self, from: searchData)
        print(searchResponse)
    }
}
