resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "tf-pipeline-artifacts-s3"
  acl = "private"
}