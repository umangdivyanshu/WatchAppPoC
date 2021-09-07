pipeline {
    agent any
    stages {
        stage ('Flutter Clean') {
            steps {
                sh '''
                   #!/bin/bash
                   flutter clean
                   '''
            }
        }
        stage ('Flutter Upgrade') {
            steps {
                sh '''
                   #!/bin/bash
                   flutter upgrade
                   '''
            }
        }
        stage ('Flutter Pub Get') {
            steps {
                sh "flutter pub get"
            }
        }
        stage ('Flutter Doctor') {
            steps {
                sh '''
                   #!/bin/bash
                   flutter doctor -v
                   '''
                
            }
        }
    }
}