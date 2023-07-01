variable "sample" {
  default = 100
}
variable "sample1" {
  default = "hello world"
}
output "sample" {
  value = "var.sample"
}
output "sample1" {
  value = "var.sample1"
}
##sometimes if variables/any reference with the combination of some other string then we have to access those in ${}
output "sample-ext" {
  value = "value of sample-${var.sample}"
}