import UIKit
import MaterialComponents.MDCTextField

class AppTextField: MDCTextField, UITextFieldDelegate {
    var controller: MDCTextInputControllerUnderline?
    override init(frame: CGRect) {
        super.init(frame: frame)
        textFieldConfig()
    }
    required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           textFieldConfig()
       }
    override func awakeFromNib() {
        super.awakeFromNib()
        textFieldConfig()
    }
      func textFieldConfig() {
            controller = MDCTextInputControllerUnderline(textInput: self)
            controller?.isFloatingEnabled = true
            controller?.errorColor = #colorLiteral(red: 0.8745098039, green: 0, blue: 0.1411764706, alpha: 1)
            controller?.floatingPlaceholderNormalColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            controller?.floatingPlaceholderActiveColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            controller?.textInputClearButtonTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            controller?.normalColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            controller?.activeColor = .blue
            controller?.disabledColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6800319253)
            controller?.textInput?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            controller?.textInput?.font = UIFont(name:"Montserrat",size:14)
        }
}

