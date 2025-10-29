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

    stage('Parallelize Build/test and SAST') {
      parallel {
        stage('SAST') {
          steps {
            echo "hello from SAST..."
            sleep time: 3, unit: 'SECONDS'
            echo "completed SAST."
          }
        }

        stage('build and test') {
          stage('Build') {
            steps {
              echo "hello from Build..."
              sleep time: 3, unit: 'SECONDS'
              echo "completed Build."
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
    }

    stage('Package') {
      steps {
        echo "hello from Package..."
        sleep time: 5, unit: 'SECONDS'
        echo "completed packaging."
      }
    }
  }
}