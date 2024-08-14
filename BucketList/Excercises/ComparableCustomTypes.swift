//
//  ComparableCustomTypes.swift
//  BucketList
//
//  Created by Adam Sayer on 14/8/2024.
//

import SwiftUI

struct User: Comparable, Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ComparableCustomTypes: View {
    let users = [
    User(firstName: "Arnold", lastName: "Rimmer"),
    User(firstName: "Christine", lastName: "Kochanski"),
    User(firstName: "David", lastName: "Lister")
    ].sorted()
    
    let values = [1, 5, 3, 6, 2, 9].sorted()
    
    var body: some View {
        List(values, id: \.self) {
            Text(String($0))
        }
    
        List(users) { user in
            Text("\(user.lastName), \(user.firstName)")
        }
    }
}

#Preview {
    ComparableCustomTypes()
}
