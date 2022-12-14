//
//  TodoStore.swift
//  ToDoApp
//
//  Created by Damirka on 02.12.2022.
//

import Foundation

class TodoStore {
    
    private init() {}
    public static let shared = TodoStore()
    
    public private(set) var todos: [TodoItem] = []
    
    func addTodo(_ todo: TodoItem) {
        todos.append(todo)
    }
    
    func removeTodo(_ todo: TodoItem) {
        if let index = todos.firstIndex(where: { $0 === todo }) {
            todos.remove(at: index)
        }
    }
    
}
