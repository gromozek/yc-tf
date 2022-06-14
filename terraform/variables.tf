#token
variable "token" {
  type      = string
  sensitive = true
}

#key
variable "sshkey" {
  type      = string
  sensitive = true
}

#ID облака
variable "cloud_id" {
  type    = string
  default = "b1g3ub80oi6o4m21td0m"
}

#ID каталога
variable "folder_id" {
  type    = string
  default = "b1g3o5j1iupdj50va1fn"
}

#Зона доступности
variable "zone" {
  type    = string
  default = "ru-central1-a"
}

#Имя подсети, в которой создаются ВМ
variable "subnet_name" {
  type    = string
  default = "subnet"
}

variable "hosts" {
    type = map(map(map(string)))
    default = {
      prod = {
	vm1 = {
          name = "node-01-prod"
          cores = "4"
          core_fraction = "100"
	}
        vm2 = {
          name = "node-02-prod"
          cores = "4"
          core_fraction = "100"
        }

    }
      stage = {
        vm1 = {
          name = "node-01-stage"
          cores = "2"
          core_fraction = "20"
        }
    }
    }
}
