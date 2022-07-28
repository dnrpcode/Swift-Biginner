//
//  DataModel.swift
//  first-project
//
//  Created by dani prayogi on 07/03/22.
//

import Foundation

//Data
struct DataModel: Identifiable{
    let id: Int
    let namaProduct: String
    let fotoProduct: String
    let hargaProduct: Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id: Int, namaproduct: String, fotoproduct: String, hargaproduct: Int, lokasi: String, ratingcount: Int, jumlahrating: Int){
        
        self.id = id
        self.namaProduct = namaproduct
        self.fotoProduct = fotoproduct
        self.hargaProduct = hargaproduct
        self.lokasi = lokasi
        self.ratingCount = ratingcount
        self.jumlahRating = jumlahrating
        
    }
    
}
