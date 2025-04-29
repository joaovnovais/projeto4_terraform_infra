# Bucket S3 para armazenar os dados
resource "aws_s3_bucket" "email_phishing_bucket" {
  bucket        = "email-phishing-infra-jota"
  force_destroy = true

  tags = {
    Name        = "Email Phishing Data Lake"
    Environment = "Dev"
  }
}

# Glue Database para catalogar os dados
resource "aws_glue_catalog_database" "email_phishing_db" {
  name = "email_phishing_data"
}
