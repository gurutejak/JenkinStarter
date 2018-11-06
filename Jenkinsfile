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

}
