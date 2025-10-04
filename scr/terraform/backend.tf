# terraform {
#   backend "s3" {
#     bucket         = "bucket-for-state"
#     # Example
#     #key            = "eks/terraform.tfstate"
#     key            = 
#     encrypt        = true
#     # Example
#     #dynamodb_table = "lock-tf-eks"
#     dynamodb_table = 
#     # dynamo key LockID
#     # Params tekan from -backend-config when terraform init
#     #region = 
#     #profile = 
#   }
# }

terraform {
  backend "s3" {
    bucket                      = "webseekers-bucket-for-state"
    key                         = "webseeker13/final.tfstate"
    region                      = "eu-central-1"
    encrypt                     = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}
