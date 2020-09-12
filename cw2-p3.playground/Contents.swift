var grades = [ 90.3,83.92,90.4 ]

let avreg1 = (grades[0] + grades[1] + grades[2]) / 3

if  avreg1 >= 90.0{

        print("ممتاز")
}
else if  avreg1 >= 80.0{
        print("جيد جدا")
}
else if avreg1 >= 70.0 {
print("راسب")
}
grades.remove(at: 1)

let avreg2 = (grades[0] + grades[1]) / 2


if  avreg2 >= 90.0{
        print("ممتاز")
}
else if  avreg2 >= 80.0{
        print("جيد جدا")
}
else if avreg2 >= 70.0 {
print("راسب")
}
