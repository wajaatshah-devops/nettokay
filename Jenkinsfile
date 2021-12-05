pipeline {
    agent any
    stages {
        stage("A") {
            options {
                timeout(time: 3, unit: "SECONDS")
            }
        }

        stage("B") {
            steps {
                echo "Started stage B"
            }
        }

        stage("C"){
          steps {
            echo "Started stage A"
            options {
              timeout(time: 5, unit: "SECONDS")
            }
          }
        }
    }
}