resource "random_pet" "pet1" {
  length = 2
}

module "sg1" {
  source = "../../modules/sg"
  name = random_pet.pet1.id
}

resource "random_pet" "pet2" {
  length = 2
}

module "sg2" {
  source = "../../modules/sg"
  name = random_pet.pet2.id

  providers = {
    aws = aws.aws_global
  }
}
