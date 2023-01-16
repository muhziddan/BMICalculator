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
        xcodebuild \
          -project BMICalculator.xcodeproj \
          -scheme BMICalculator \
          -configuration Debug build \
          -destination 'platform=iOS Simulator,name=iPhone 14'
      }
    }
        
    stage('Unit testing') {
      steps {
        echo "start unit testing";
        xcodebuild \
          -project BMICalculator.xcodeproj \
          -scheme BMICalculator \
          -configuration Debug test \
          -destination 'platform=iOS Simulator,name=iPhone 14'
      }
    }
    
  }
  
}
