func sayHello(name: String) {
    // 1. Створюємо змінну 'greeting', яка зберігає повідомлення
    var greeting = "Hello, \(name)! 👋"
    
    // 2. Виводимо значення цієї змінної
    print(greeting)
}

// Виклик функції залишається таким самим
sayHello(name: "Andrii")