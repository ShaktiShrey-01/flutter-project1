plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.fapp"
    compileSdk = 34 // Update compileSdk to 34 or higher

    ndkVersion = "27.0.12077973" // Ensure this line is present

    defaultConfig {
        applicationId = "com.example.fapp"
        minSdk = 21
        targetSdk = 34 // Update targetSdk to 34 or higher
        versionCode = 1
        versionName = "1.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
            
        }
    }
}

flutter {
    source = "../.."
}
