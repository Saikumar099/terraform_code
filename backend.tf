terraform {
  backend "s3" {
    bucket  = "sample-bucket-5d5b5b494914f544"
    key     = "gsk/terraform.tfstate"
    region  = "us-east-1"
    backend = "terraform-state-lock"
  }
}


resource "aws_dynamodb_table" "terraform_state_lock" {
  name         = "terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

}