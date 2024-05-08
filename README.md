# Alert (with. UIAlertController)
UIAlertController를 사용하여 Alert 만들기

## 1. 사용 예제 (preferredStyle = .alert)

버튼 1개<br>

![image](https://sunidev.github.io/assets/images/210412/make-common-alert-alert1.PNG)
<br>
```swift
    CommonAlert.showAlertAction1(vc: self, preferredStyle: .alert, title: "Alert Style", message: "1 Button Alert")
```
<br>
버튼 2개<br><br>

![image](https://sunidev.github.io/assets/images/210412/make-common-alert-alert2.PNG)
<br>
```swift
    CommonAlert.showAlertAction2(vc: self, preferredStyle: .alert, title: "Alert Style", message: "2 Button Alert")
```
<br>
버튼 3개<br><br>

![image](https://sunidev.github.io/assets/images/210412/make-common-alert-alert3.PNG)
<br>
```swift
    CommonAlert.showAlertAction3(vc: self, preferredStyle: .alert, title: "Alert Style", message: "3 Button Alert")
```
<br><br>

## 2. 사용 예제 (preferredStyle = .actionSheet)

버튼 1개<br>

![image](https://sunidev.github.io/assets/images/210412/make-common-alert-actionsheet1.PNG)
<br>
```swift
    CommonAlert.showAlertAction1(vc: self, preferredStyle: .actionSheet, title: "Action Sheet Style", message: "1 Button Action Sheet")
```
<br>
버튼 2개<br><br>

![image](https://sunidev.github.io/assets/images/210412/make-common-alert-actionsheet2.PNG)
<br>
```swift
    CommonAlert.showAlertAction2(vc: self, preferredStyle: .actionSheet, title: "Action Sheet Style", message: "2 Button Action Sheet")
```
<br>
버튼 3개<br><br>

![image](https://sunidev.github.io/assets/images/210412/make-common-alert-actionsheet3.PNG)
<br>
```swift
    CommonAlert.showAlertAction3(vc: self, preferredStyle: .actionSheet, title: "Action Sheet Style", message: "3 Button Action Sheet")
```
<br><br>

## 블로그
[[iOS/Swift] UIAlertController를 사용하여 Alert 만들기](https://sunidev.tistory.com/8)

