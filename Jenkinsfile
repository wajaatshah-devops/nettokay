pipeline {
    agent any
    stages {
        stage("A") {
            options {
                timeout(time: 3, unit: "SECONDS")
            }

            steps {
              echo "Started stage A"
              options {
                timeout(time: 3, unit: "SECONDS")
              }
            }
        }

        stage("B") {
            steps {
                echo "Started stage B"
            }
        }
    }
}