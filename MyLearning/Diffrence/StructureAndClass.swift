//
//  StructureAndClass.swift
//  MyLearning
//
//  Created by Amilzith on 18/07/24.
//

import SwiftUI

struct StructureAndClass: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                let student1 = StudentClass(name: "Ramesh Chandra", grade: 9)
                let student2 = student1
                student2.name = "Ramesh Kant"
                print("student1 name: \(student1.name)")
                print("student2 name: \(student2.name)")
                
                let student3 = StudentStruct(name: "Anish Sharma", grade: 8)
                var student4 = student3
                student4.name = "Anish Gupta"
                print("student3 name: \(student3.name)")
                print("student4 name: \(student4.name)")
                
                var a: Int?
                a = 7
                guard var c = a else { return }
                c = 5
                print(c)
            }
    }
}

#Preview {
    StructureAndClass()
}


class StudentClass {
   var name: String
   var grade: Int = 70 // Default value
    
    // Initializer || Constructor || // Designated initializer
    init(name: String, grade: Int) {
        self.name = name
        self.grade = grade
    }
    
    // Convenience initializer
    convenience init(name: String) {
        self.init(name: name, grade: 2020) // Default grade
    }
    
    // Deinitializer || Destructor
    deinit {
        print("closed.")
    }
}

struct StudentStruct {
   var name: String
   var grade: Int = 70
}

//1. Constructor: Designated initializer
//2. Destructor:
//3. Convenience initializer:

