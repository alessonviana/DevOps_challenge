terraform {
    backend "s3" {
        region = "us-east-1"
        bucket = "challenge-backend"
        encrypt = "true"
        key = "terraform.tfstate"

    }
}