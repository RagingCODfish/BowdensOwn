//
//  Cart.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 17/11/2022.
//

import Foundation

class Cart: ObservableObject {
    @Published private(set) var orderItems: [OrderItem] = []
    let savePath = FileManager.documentsDirectory.appendingPathComponent("OrderedItems")
    
    init() {
        do {
            let data = try Data(contentsOf: savePath)
            orderItems = try JSONDecoder().decode([OrderItem].self, from: data)
        } catch {
            orderItems = []
        }
    }
    
    let paymentHandler = PaymentHandler()
    @Published var paymentSuccess = false
    
    var totalPrice: Double {
        orderItems.reduce(0) { $0 + $1.price}
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(orderItems)
            try data.write(to: savePath, options: [.atomic, .completeFileProtection])
        } catch {
            print("Unable to save data")
        }
    }
    
    func add(_ product: Product, price: Double) {
        let order = OrderItem(id: UUID(), name: product.name, price: price)
        orderItems.insert(order, at: 0)
        save()
    }
    
    func reorder(_ order: OrderItem) {
        var copy = order
        copy.id = UUID()
        orderItems.insert(copy, at: 0)
        save()
    }
    
    func delete(_ order: OrderItem) {
        if let index = orderItems.firstIndex(of: order) {
            orderItems.remove(at: index)
            save()
        }
    }
    
    func pay() {
        paymentHandler.startPayment(orderItems: orderItems, total: totalPrice) { success in
            if success == true {
                self.paymentSuccess = success
                self.orderItems = []
                self.save()
            } else {
                self.save()
            }
        }
    }
}
