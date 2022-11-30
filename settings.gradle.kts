pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
        mavenLocal()
        maven("https://oss.sonatype.org/content/repositories/snapshots")
    }
}

enableFeaturePreview("VERSION_CATALOGS")

include(/*"breeds", "analytics",*/ "allshared")
