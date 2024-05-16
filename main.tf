resource "aws_instance" "test"{
    ami = "ami-04ff98ccbfa41c9ad"
    instance_type = "t2.micro"
    key_name = "NVirginia32"
    tags = {
      Name="server1"
    }
}
# S3 
resource "aws_s3_bucket" "s3bucket" {
  bucket = "terraformst-may15"
}


#Dynamodb
    resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
      name = "terraform-state-lock-dynamo"
      hash_key = "LockID"
      read_capacity = 20
      write_capacity = 20
     
      attribute {
        name = "LockID"
        type = "S"
      }
    }
