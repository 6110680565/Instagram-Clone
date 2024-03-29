//
//  User.swift
//  Instragram-clone
//
//  Created by Tham Thearawiboon on 6/11/2564 BE.
//

import Firebase
import FirebaseFirestoreSwift

struct User: Decodable, Identifiable {
    
    let username: String
    let email: String
    let fullname : String
    var profileImageURL: String?
    @DocumentID var id: String?
    var stats: UserStatsData?
    
    mutating func updateProfileImageURl(url: String){
        profileImageURL = url
    }
    
    var isCurrentUser: Bool {
        AuthViewModel.shared.userSession?.uid == id 
    }
    
    var didFollow: Bool? = false
    var bio: String?
    
}

struct UserStatsData: Decodable {
    var following: Int
    var followers: Int
    var posts: Int
}
