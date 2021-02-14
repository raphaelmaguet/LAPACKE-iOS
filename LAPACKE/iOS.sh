#make CC="xcrun -sdk iphoneos clang -arch arm64" LAPACKELIB=liblapacke-iOS.a
make -j4 CC="xcrun -sdk iphonesimulator clang -arch arm64" LAPACKELIB=liblapacke-iOS-simulator.a
