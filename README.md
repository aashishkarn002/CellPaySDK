## CellPay-SDK
![](https://cellpay.com.np/themes/ele/assets/img/CellPay.svg)
# Steps to add CellPay SdK and usage 

- Add pod 'CellPayButton',:git => 'https://github.com/aashishkarn002/CellPayButton' to your pod file and install pod file.

- Add Pay with CellPay Button with hex value (#193983), rgb(red:25,green:57,blue:131,alpha:1) to viewcontroller.

- After installing pod file  import CellPayButton to viewcontroller.

- Implement PaymentProtocol to ViewController 

-Implementing PaymentProtocol to ViewController will inherit two function success and failed you can use these function as per requirement.

- In @IBAction of Pay with CellPay Button call CellPay SDK LoginVC as  

#### CellPayFramework.performSegueToLoginVC(caller: self, requiredArgument: CellPayPaymentArguments(mobileNumber: "9843534280", merchantName: merchantName, paymentType: 1 or 2, price: amount, invoiceID: invoiceID),delegate:self,isLive:bool)

### Note: Send 1 in paymentType if it is MemberPayment and 2 if it is SystemPayment.  


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CellPay Framework is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CellPayButton',:git => 'https://github.com/aashishkarn002/CellPayButton'
```

## Author

Aashish Karn, aashish.karn@cellcom.net.np

## License

CellPayButton is available under the MIT license. See the LICENSE file for more info.
