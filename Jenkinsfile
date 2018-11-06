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
}
