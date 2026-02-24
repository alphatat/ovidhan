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


tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

subprojects {
    val project = this
    // This executes before the project is evaluated
    project.plugins.whenObjectAdded {
        if (this is com.android.build.gradle.BasePlugin) {
            project.extensions.configure<com.android.build.gradle.BaseExtension> {
                if (namespace == null) {
                    namespace = project.group.toString()
                }
            }
        }
    }
}