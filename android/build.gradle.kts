import java.io.File

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

fun Project.inferNamespace(): String {
    val manifestFile = File(projectDir, "src/main/AndroidManifest.xml")
    if (manifestFile.exists()) {
        val manifestText = manifestFile.readText()
        val pkg = Regex("""package\s*=\s*\"([^\"]+)\"""")
            .find(manifestText)
            ?.groupValues
            ?.getOrNull(1)
        if (!pkg.isNullOrBlank()) {
            return pkg
        }
    }

    val sanitizedGroup = group.toString().ifBlank { "dev.flutter" }
        .replace(Regex("[^A-Za-z0-9_.]"), "_")
        .trim('.')
    val sanitizedName = name.replace(Regex("[^A-Za-z0-9_]"), "_")
    return "$sanitizedGroup.$sanitizedName"
}

subprojects {
    pluginManager.withPlugin("com.android.application") {
        extensions.configure<com.android.build.gradle.BaseExtension>("android") {
            if (namespace.isNullOrBlank()) {
                namespace = project.inferNamespace()
            }
        }
    }
    pluginManager.withPlugin("com.android.library") {
        extensions.configure<com.android.build.gradle.BaseExtension>("android") {
            if (namespace.isNullOrBlank()) {
                namespace = project.inferNamespace()
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
