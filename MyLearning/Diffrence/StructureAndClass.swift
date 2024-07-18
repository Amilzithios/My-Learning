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
            }
    }
}

#Preview {
    StructureAndClass()
}


class StudentClass {
   var name: String
   var grade: Int
   init(name: String, grade: Int) {
      self.name = name
      self.grade = grade
   }
}

struct StudentStruct {
   var name: String
   var grade: Int
}
