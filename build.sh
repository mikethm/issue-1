rm platforms/android/build/outputs/apk/android-release-unsigned-aligned.apk
rm platforms/android/build/outputs/apk/android-debug-unsigned-aligned.apk


ionic cordova build android --prod --release

#align and sign apk - otherwise will not install on phones
~/Library/Android/sdk/build-tools/25.0.3/zipalign -f -v -p 4  platforms/android/build/outputs/apk/android-debug.apk  platforms/android/build/outputs/apk/android-debug-unsigned-aligned.apk
~/Library/Android/sdk/build-tools/25.0.3/zipalign -f -v -p 4  platforms/android/build/outputs/apk/android-release-unsigned.apk  platforms/android/build/outputs/apk/android-release-unsigned-aligned.apk

# to create the key
#keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key


#ls -lart platforms/android/build/outputs/apk/

#~/Library/Android/sdk/build-tools/25.0.3/apksigner sign --ks key.jks --out test.apk android-debug-unsigned-aligned.apk
~/Library/Android/sdk/build-tools/25.0.3/apksigner sign --ks platforms/android/build/outputs/apk/key.jks --out platforms/android/build/outputs/apk/test.apk  platforms/android/build/outputs/apk/android-release-unsigned-aligned.apk

#pushd platforms/android/build/outputs/apk/

#python -mSimpleHTTPServer

#popd
