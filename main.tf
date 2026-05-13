module "my_s3"{

  source = "/root/terraformmodules/s3"
  first_s3 = "${var.myapp}-bkt21"


}


module "my_vpc"{
  source = "/root/terraformmodules/vpc"
  my_vpc = "${var.myapp}-vpc"
  vpc_cidr_block = var.myvpc_cidr
  my_igw = "${var.myapp}-igw"
  my_route = "${var.myapp}-route"
  my_subnet = "${var.myapp}-subnet"
  subnet_cidr = var.mysubnet_cidr

}

module "app2_ec2" {
  source   = "/root/terraformmodules/ec2"
  for_each = var.my_dict

  servername    = each.key
  ami           = each.value.ami
  instance_type = each.value.type
  key_name      = each.value.key
  ec2_sub_id    = module.my_vpc.subnet_out
}

