pipeline {
  agent {
    label 'Mac_Node'
  }
    stages {
        stage('Git Checkout') {
            steps {
                echo "compiled successfully";
            }
        }
        
        stage('JUnit') {
            steps {
                echo "JUnit passed";
            }
        }
        
        stage('Quality-Gate') {
            steps {
                echo "sonarqube quality gate passed";
                /*sh exit ("1");*/
            }
        }
        
        stage('Deploy') {
            steps {
                echo "passed";
            }
        }
    }
    
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
}
