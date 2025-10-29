pipeline {
  agent any

  stages {
    stage('SCM') {
      steps {
        echo 'Fetching the app data from %params.branch%'
      }
    }

    stage('Build') {
      steps {
        echo 'Running build..'
      }
    }

    stage('Package') {
      steps {
        echo 'Packaging app...'
      }
    }
  }
}