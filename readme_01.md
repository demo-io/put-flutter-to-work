
# android

## env
1. windows 10
2. 2021.2.1 Patch2

## test

1. 

```
cd myapp
flutter build aar
```

2.

2.1 open `Android Studio` -> `open` newsfeed_android -> 'Run'

2.2 in `app` -> scroll to the end -> `flutter activity` show.


# convert app to module

https://juejin-cn.translate.goog/post/6919851934337728526?_x_tr_sl=zh-CN&_x_tr_tl=en&_x_tr_hl=en&_x_tr_pto=wapp


1. Modify pubspec.yaml, add at the bottom (note the indentation, there are two spaces on the left).

```
  module:
    androidX: true
    androidPackage: com.example.hello_module
    iosBundleIdentifier: com.example.helloModule
```


2. Modify .metadata, will be project_type: appchanged to `project_type: module`.

3. Remove `ios` and `android` folder.
4. Clean and build .iosand .android.

```
flutter clean
flutter pub get
flutter build aar

```
