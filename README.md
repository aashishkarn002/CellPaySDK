## CellPay-SDK

# Steps to add CellPay SdK and usage 

- Add pod 'MyFramework',:git => 'https://github.com/aashishkarn002/CellPaySDK' to your pod file and install pod file.

- Add Pay with CellPay Button with hex value (#193983), rgb(red:25,green:57,blue:131,alpha:1) to viewcontroller.

- After installing pod file  import MyFramework to viewcontroller.

- In @IBAction of Pay with CellPay Button call CellPay SDK LoginVC as  MyFramework.performSegueToLoginVC(caller: self, requiredArgument: CellPayPaymentArguments(mobileNumber: "9843534280", merchantName: merchantName, paymentType: 1 or 2, price: amount, invoiceID: invoiceID))

  ``` diff - Note: Send 1 in paymentType if it is MemberPayment and 2 if it is SystmePayment.  ```


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CellPay Framework is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MyFramework',:git => 'https://github.com/aashishkarn002/CellPaySDK'
```

## Author

Aashish Karn, aashish.karn@cellcom.net.np

## License

MyFramework is available under the MIT license. See the LICENSE file for more info.
