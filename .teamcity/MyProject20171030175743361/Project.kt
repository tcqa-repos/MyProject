package MyProject20171030175743361

import MyProject20171030175743361.buildTypes.*
import jetbrains.buildServer.configs.kotlin.v2017_2.*
import jetbrains.buildServer.configs.kotlin.v2017_2.Project
import jetbrains.buildServer.configs.kotlin.v2017_2.projectFeatures.VersionedSettings
import jetbrains.buildServer.configs.kotlin.v2017_2.projectFeatures.VersionedSettings.*
import jetbrains.buildServer.configs.kotlin.v2017_2.projectFeatures.versionedSettings

object Project : Project({
    uuid = "c564215d-6ecc-472d-bfb0-67e06a7090b2"
    extId = "MyProject20171030175743361"
    parentId = "_Root"
    name = "My Project 2017-10-30 17:57:43.361"

    buildType(MyProject20171030175743361_MyBuild)

    features {
        versionedSettings {
            id = "PROJECT_EXT_41"
            mode = VersionedSettings.Mode.ENABLED
            buildSettingsMode = VersionedSettings.BuildSettingsMode.PREFER_SETTINGS_FROM_VCS
            rootExtId = "Dependencies_LibTestsMaster_HttpsGithubComJuliaReshMyProjectGit"
            showChanges = false
            settingsFormat = VersionedSettings.Format.KOTLIN
            storeSecureParamsOutsideOfVcs = true
        }
    }
})
