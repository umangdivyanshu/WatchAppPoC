pipeline {
    agent any
    stages {
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