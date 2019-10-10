//
//  SampleData.swift
//  Ratings
//
//  Created by CCDM24 on 10/10/19.
//  Copyright © 2019 Naroh. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generatePlayersData () -> [Player]{
        return[
            Player(name: "Gintoki Sakata", game: "Pachinko", rating: 3),
            Player(name: "Shinpachi Shimura", game: "Nobunaga's Regurgitation", rating: 3),
            Player(name: "Toushiro Hijikata", game: "Mario", rating: 5),
            
         
        ]
    }
    
    

}
