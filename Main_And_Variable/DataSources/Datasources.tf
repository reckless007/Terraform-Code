resource "local_file" "local"{
    filename = "/Users/sdivyanshu/Desktop/Local_Folder/local.txt"
    content = data.local_file.dog.content
}
data "local_file" "dog"{
    filename = "/Users/sdivyanshu/Desktop/Local_Folder/dogs.txt"
}