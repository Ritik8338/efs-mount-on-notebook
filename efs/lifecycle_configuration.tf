# Defining the SageMaker notebook lifecycle configuration
resource "aws_sagemaker_notebook_instance_lifecycle_configuration" "notebook_config" {
  name = "dkhundley-sm-lifecycle-config"
  on_create = [
    "${file("./scripts/on_create.sh")}"
  ]
  on_start = base64encode("echo on-start")
}