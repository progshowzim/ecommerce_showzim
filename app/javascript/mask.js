import Inputmask from "inputmask"

// MASK PHONE
const element_phone = document.getElementsByClassName("mask-phone")
const im_phone = new Inputmask("99-99999999")
im_phone.mask(element_phone)
