//Use Of String Variable

variable "demo_u1" {
    type = string
    default = "var_user_1"
}

//Use Of number Variable

variable "demo_u2" {
    type = number
    default = 1
}

//Use Of list Variable

variable "demo_u3" {
    type = list
    default = ["Nilesh","Yogi","Sanket","Shubham"]
}

//Use Of map Variable

variable "demo_u4" {
    type = map
  default = {
    a = "Oggy"
    b = "Olivia"
    c = "Bob"
    d = "Jack"
  }
}

//Use Of All Variables

variable "demo_u5" {
    type = any
    default = {
        a = "Nilesh"
        b = 100
        c = ["Bheem","Raju","Chutki","Kaliya"]
        d = {
            d_a = "Spiderman"
            d_b = "Superman"
            d_c = "Ironman"
            d_d = "Captain_America"
        }
    }
  
}
