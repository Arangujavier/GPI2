# Sonaqube
./gradlew sonarqube -Dsonar.projectKey=GPI2 -Dsonar.host.url=http://localhost:10000 -Dsonar.login=sqp_5b09c4d9888b6e8c81f3fa9e5b3a6153b118238b

# Compilacion
./gradlew assembleDebug

# Empaquetado
rm app/build/outputs/apk/debug/app-debug-aligned.apk
zipalign -v 4 app/build/outputs/apk/debug/app-debug.apk app/build/outputs/apk/debug/app-debug-aligned.apk

# Easybuggy
cd ../../EasyBuggy
mvn clean install
