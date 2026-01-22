data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "your-tfstate-bucket"
    key    = "vpc/terraform.tfstate"
    region = "your-aws-region"
  }
}
