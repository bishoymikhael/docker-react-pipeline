pipeline {
  agent any

  parameters {
    string(name: 'branch', defaultValue: 'main', description: 'The branch to operate on')
  }

  stages {
    stage('SCM') {
      steps {
        echo "Fetching the app data from ${params.branch}"
      }
    }

    stage('SAST') {
      steps {
        echo "hello from SAST..."
        sleep time: 3, unit: 'SECONDS'
        echo "completed SAST."
      }
    }

    stage('Build') {
      steps {
        echo "hello from Build..."
        sleep time: 3, unit: 'SECONDS'
        echo "completed Build."
      }
    }

    stage('Package') {
      steps {
        echo "hello from Package..."
        sleep time: 5, unit: 'SECONDS'
        echo "completed packaging."
      }
    }

    stage('unit test') {
      steps {
        echo "hello from test..."
        sleep time: 3, unit: 'SECONDS'
        echo "completed testing."
      }
    }
  }
}