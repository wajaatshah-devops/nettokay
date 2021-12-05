pipeline {
    agent any

    stages {
        stage("A") {
            options {
                timeout(time: 5, unit: "SECONDS")
            }
        }

        stage("B") {
            steps {
                echo "Started stage B"
            }
        }
    }
}