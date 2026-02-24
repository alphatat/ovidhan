import java.io.File
import com.android.build.gradle.LibraryExtension
import com.android.build.api.dsl.CommonExtension

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")
}

subprojects {
    plugins.withId("com.android.application") {
        extensions.configure<CommonExtension<*, *, *, *, *, *>>("android") {
            compileSdk = maxOf(compileSdk, 34)
        }
    }

    plugins.withId("com.android.library") {
        extensions.configure<LibraryExtension>("android") {
            compileSdk = maxOf(compileSdk, 34)

            if (namespace == null) {
                val manifestFile = project.file("src/main/AndroidManifest.xml")
                val manifestPackage =
                    if (manifestFile.exists()) {
                        Regex("package\\s*=\\s*\"([^\"]+)\"")
                            .find(manifestFile.readText())
                            ?.groupValues
                            ?.getOrNull(1)
                    } else {
                        null
                    }

                if (!manifestPackage.isNullOrBlank()) {
                    namespace = manifestPackage
                }
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
