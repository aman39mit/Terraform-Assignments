//Defining String Variable
variable "str"{
    type = string
    description = "enter a string"
    default = "myhtml.html"
}

//Defining Number Variable
variable "num" {
  type =  number
  description = "enter a number"
  default = 9
}

//Defining Map Variable
variable "maps" {
  type = map(string)
}

//Defining List Variable
variable "lists"{
    type = list(any)
}

//Defining Bool Variable
variable "boolean"{
    type = bool
}

//Defining Object Variable
variable "obj"{
    type = object(
        {
            emp_id = number ,
            emp_name = string
        }
    )
}