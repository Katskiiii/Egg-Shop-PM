
//
//  main.swift
//  OCProgram
//
//  Created by Student Name on 1/01/24.
//

import Foundation
import PythonKit
import OCGUI

// Delete the code beneath and replace it with your own.

class DemoApp : OCApp {
    override open func main(_ mainArgs: [PythonObject]) -> PythonObject {
        let nameField: OCTextField = OCTextField(hint: "Name")
        let okButton: OCButton = OCButton(text: "OK")
        okButton.onClick({ _ in
            let dialog = OCDialog(title: "Hello", message: "Hello, \(nameField.text)")
            dialog.show(in: mainArgs[0])
            return Python.None
        })
        
        return OCVBox(controls: [
            OCHBox(controls: [OCLabel(text: "Enter your name:"), nameField]),
            okButton
        ]).pythonObject
    }
}

DemoApp().start()
