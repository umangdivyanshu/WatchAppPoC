pipeline {
    agent any
    stages {
        // stage ('Flutter Clean') {
        //     steps {
        //         sh '''
        //            #!/bin/bash
        //            flutter clean
        //            '''
        //     }
        // }
        // stage ('Flutter Upgrade') {
        //     steps {
        //         sh '''
        //            #!/bin/bash
        //            flutter upgrade
        //            '''
        //     }
        // }
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
        stage ('Run Flutter Tests') {
            steps {
                sh '''
                   #!/bin/bash
                   flutter drive --driver=test_driver/integration_test_driver.dart --target=integration_test/gherkin_suite_test.dart -d web-server --no-headless --browser-name=chrome --browser-dimension 1435,1000
                   '''
                
            }
        }
    }
}