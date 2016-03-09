//
//  CardNumberTextField+InterfaceBuilder.swift
//  Pods
//
//  Created by Daniel Vancura on 3/8/16.
//
//

public extension CardNumberTextField {
    override public final var textColor: UIColor? {
        didSet {
            let textFieldArray: [UITextField?] = [numberInputTextField, cvcTextField, monthTextField, yearTextField]
            textFieldArray.forEach({$0?.textColor = textColor})
        }
    }
    public override final var backgroundColor: UIColor? {
        didSet {
            numberInputTextField?.backgroundColor = backgroundColor
            cardImageView?.backgroundColor = backgroundColor
        }
    }
    public override final var font: UIFont? {
        didSet {
            let textFieldArray: [UITextField?] = [numberInputTextField, cvcTextField, monthTextField, yearTextField]
            textFieldArray.forEach({$0?.font = font})
        }
    }
    public override final var keyboardType: UIKeyboardType {
        didSet {
            let textFieldArray: [UITextField?] = [numberInputTextField, cvcTextField, monthTextField, yearTextField]
            textFieldArray.forEach({$0?.keyboardType = keyboardType})
        }
    }
    public override final var secureTextEntry: Bool {
        didSet {
            let textFieldArray: [UITextField?] = [numberInputTextField, cvcTextField, monthTextField, yearTextField]
            textFieldArray.forEach({$0?.secureTextEntry = secureTextEntry})
        }
    }
    public override final var keyboardAppearance: UIKeyboardAppearance {
        didSet {
            let textFieldArray: [UITextField?] = [numberInputTextField, cvcTextField, monthTextField, yearTextField]
            textFieldArray.forEach({$0?.keyboardAppearance = keyboardAppearance})
        }
    }
    
    
}