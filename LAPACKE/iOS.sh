make cleanobj all CC="xcrun --sdk iphoneos clang -arch arm64" LAPACKELIB=liblapacke-iOS.a CFLAGS="-mios-version-min=9.0"

make cleanobj all CC="xcrun --sdk iphonesimulator clang -arch x86_64" LAPACKELIB=liblapacke-iOS-simulator-x86_64.a CFLAGS="-miphonesimulator-version-min=9.0"

make cleanobj all CC="xcrun --sdk iphonesimulator clang -arch arm64" LAPACKELIB=liblapacke-iOS-simulator-arm64.a CFLAGS="-miphonesimulator-version-min=9.0"

lipo -create -arch x86_64 ../liblapacke-iOS-simulator-x86_64.a -arch arm64 ../liblapacke-iOS-simulator-arm64.a -output ../liblapacke-iOS-simulator.a

rm -rf ../LAPACKE.xcframework

xcodebuild -create-xcframework \
  -library ../liblapacke-iOS.a -headers include \
  -library ../liblapacke-iOS-simulator.a -headers include \
  -output ../LAPACKE.xcframework
