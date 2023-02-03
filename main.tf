//Aman Mittal 
//Batch 7
//Home Assignment 1

//Creating Local File Resource
resource "local_file" "LocalFileResourceAman" {
  filename = "AmanLocalFile.txt"
  content  = "Hello This is my local file"
}

//creating Locals and Random string
//Locals
locals{
    common_content = "Hi, This content is generated using locals"
}

resource "local_file" "Resource1"{
    filename="file1.txt"
    content=local.common_content
}

resource "local_file" "Resource2"{
    filename="file2.txt"
    content=local.common_content
}

//Random Strings using random_id
resource "random_id" "RandomFileName"{
    byte_length = 6
}

resource "local_file" "Resource3"{
    filename = "${random_id.RandomFileName.hex}.txt"
    content = "Hi I have Some random string as my file name"
}

resource "local_file" "Resource4"{
    filename = "${random_id.RandomFileName.dec}.txt"
    content = "Hi I got a random file name"
}

//Variables

//Using String Variable
resource "local_file" "Resource5" {
    filename = var.str
    content = "hello"
}

//Using Number Vairable
resource "local_file" "Resource6" {
    filename = "NumberVariable.txt"
    content = var.num
}

//Using Map Variable
resource "local_file" Resource7{
    filename = var.maps["MfileName"]
    content = var.maps["Mcontent"]
}

//Using List Variable
resource "local_file" Resource8{
    filename = "ListFile.txt"
    content = var.lists[3]
}

//Using Bool Variable
resource "local_file" "Resource9"{
    filename = "BoolFile.txt"
    content = var.boolean
}

//Using Object Variable
resource "local_file" Resource10{
    filename = "ObjectFile.txt"
    content = "${var.obj["emp_id"]} ${var.obj["emp_name"]}"
}