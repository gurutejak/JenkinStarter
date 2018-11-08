node{
    stage('Checkout') {
        checkout([
            $class: 'GitSCM',
            branches: [[name: 'master']],
            doGenerateSubmoduleConfigurations: false,
            extensions: [], submoduleCfg: [],
            userRemoteConfigs: [[
            name: 'github',
            url: 'https://github.com/gurutejak/JenkinStarter.git'
            ]]
        ])
    }

    stage('Build') {
        sh "xcrun xcodebuild  -project JenkinsStarter.xcodeproj -scheme JenkinsStarter -destination 'name=iPhone 7' clean build"
    }

    stage('Archieve') {
        sh "xcodebuild -scheme JenkinsStarter -sdk iphoneos -target JenkinsStarter -destination 'generic/platform=iOS' -archivePath export/JenkinsStarter.xcarchive archive DEVELOPMENT_TEAM='LSVVD8ZPH6' PROVISIONING_PROFILE='54763f3e-f511-4a5c-8c5d-297fb34c2bd8' CODE_SIGNING_REQUIRED=NO"
    }

    stage('Extracting ipa') {
        sh "xcodebuild -exportArchive -archivePath export/JenkinsStarter.xcarchive \
        -exportPath ~/.jenkins/workspace/exportedIPA/JenkinsStarter.ipa \
        -exportOptionsPlist ~/.jenkins/workspace/CodeSigning/ExportOptions.plist"
    }

    stage ('Uploading to Hockey'){
        hockeyApp applications: [[apiToken: '743d568b06a24060bb548614c1bcf4ad', downloadAllowed: true, filePath: '~/.jenkins/workspace/exportedIPA/JenkinsStarter.ipa', mandatory: false, notifyTeam: true, releaseNotesMethod: none(), uploadMethod: appCreation(false)]], debugMode: false, failGracefully: false
    }
}
