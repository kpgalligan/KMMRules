pluginManagement {
    repositories {
        mavenLocal()
        google()
        gradlePluginPortal()
        mavenCentral()

    }
}

enableFeaturePreview("VERSION_CATALOGS")

include(/*"breeds", "analytics",*/ "allshared", "lessshared")
