pipeline {
    agent any
    stages {
        stage("A") {
            options {
                timeout(time: 5, unit: "SECONDS")
            }
            steps {
                echo "Started stage A"
            }
        }

        stage("B") {
            steps {
                echo "Started stage B"
            }
        }
    }
}