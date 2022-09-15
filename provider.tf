terraform {
   required_version = ">= 0.13"
  required_providers {
    flexibleengine = {
      source = "FlexibleEngineCloud/flexibleengine"
      version = ">= 1.24.2"
    }
  }
}
provider "flexibleengine" {
  access_key  = "AK" 
  #add from Console under Cred
  secret_key  = "SK"
  #add from Console under Cred
  domain_name = "OCB0005121"
  auth_url    = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
  region      = "eu-west-1"
}
