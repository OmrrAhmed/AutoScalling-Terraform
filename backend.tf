terraform {
  backend "s3" {
    bucket         = "tf-state-prod-0001"
    key            = "tf-state"
    region         = "eu-north-1"
    dynamodb_table = "TF-lock-001"
  }
}
