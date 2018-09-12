package MyProject20171030175743361.buildTypes

import jetbrains.buildServer.configs.kotlin.v2017_2.*
import jetbrains.buildServer.configs.kotlin.v2017_2.buildSteps.ScriptBuildStep
import jetbrains.buildServer.configs.kotlin.v2017_2.buildSteps.ScriptBuildStep.*
import jetbrains.buildServer.configs.kotlin.v2017_2.buildSteps.script

object MyProject20171030175743361_MyBuild : BuildType({
    uuid = "1456564e-eca6-4a0e-9e2a-2c4f1770adfc"
    extId = "MyProject20171030175743361_MyBuild"
    name = "My Build"

    artifactRules = "file.txt => "

    steps {
        script {
            scriptContent = "echo some string >> file.txt"
        }
    }
})
