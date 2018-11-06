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
sh "xcrun xcodebuild  -project '${xcodeProject}' -scheme '${build_scheme}' -destination 'name=iPhone 7' clean build"
}

stage('Archieve') {
sh xcodebuild -scheme QRReader clean archive -archivePath build/QRReader
sh xcodebuild -exportArchive -exportFormat ipa -archivePath "build/QRReader.xcarchive" -exportPath "build/QRReader.ipa" -exportProvisioningProfile "cognizantenterprisemobility"
}
}