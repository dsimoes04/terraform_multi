module "teste_s3" {
  source = "../modules/aws_s3"
  bucket = "terraform_test"
  tags = {
    name = "test"
  }
}