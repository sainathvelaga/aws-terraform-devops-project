module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
}

module "lambda" {
  source        = "./modules/lambda"
  bucket_name   = module.s3.bucket_name
  project_name  = var.project_name
}

module "ec2" {
  source       = "./modules/ec2"
  vpc_id       = module.vpc.vpc_id
  subnet_id    = module.vpc.private_subnet_id
  project_name = var.project_name
}
