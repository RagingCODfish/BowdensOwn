//
//  ProductHaveAQuestionView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 17/1/2023.
//

import SwiftUI

struct ProductHaveAQuestionView: View {
	let product: Product
	@State var name: String
	@State var email: String
	@State var phone: String
	@State var question: String
	
    var body: some View {
		Form {
			TextField("Name", text: $name)
			TextField("Email", text: $email)
				.keyboardType(.emailAddress)
			TextField("Phone", text: $phone)
			TextField("Question", text: $question)
		}
    }
}

struct ProductHaveAQuestionView_Previews: PreviewProvider {
    static var previews: some View {
		ProductHaveAQuestionView(product: .example, name: "Zach", email: "Zachary.uptin@me.com", phone: "0437655471", question: "This is a test question")
    }
}
