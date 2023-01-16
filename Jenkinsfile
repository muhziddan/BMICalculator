pipeline {
  agent {
    label 'Mac_Node'
  }
    stages {
        stage('Git Checkout') {
            steps {
              echo "Checking out from git repository";
              git branch: 'jenkins-integration', credentialsId: '69fb948e-34f7-4985-90ae-de52a905b395', url: 'https://github.com/muhziddan/BMICalculator.git'
            }
        }
        
        stage('Build') {
            steps {
              echo "Start Building";
              xcodebuild /
                /*-project BMICalculator.xcodeproj /*/
                -scheme BMICalculator /
                -configuration Debug build /
                -destination 'platform=iOS Simulator,name=iPhone 14'
            }
        }
        
        stage('Unit testing') {
            steps {
              echo "start unit testing";
              xcodebuild /
                /*-project BMICalculator.xcodeproj /*/
                -scheme BMICalculator /
                -configuration Debug test /
                -destination 'platform=iOS Simulator,name=iPhone 14'
              /*sh exit ("1");*/
            }
        }
        
        /*
        stage('Deploy') {
            steps {
                echo "passed";
            }
        }
        */
    }
    /*
    post {
        always {
            echo "this will always run"
        }
        success {
            echo "run if success"
        }
        failure {
            echo "run if failed"
        }
        unstable {
            echo "run if he run was marked as unstable"
        }
        changed {
            echo "run if the state of pipeline has changed"
            echo "for example if pipeline was previously failing but now successful"
        }
    }
  */
}
