import Foundation


func encode(_ message:String, _ inc:Int) -> String {

  if inc < 0 {
    return "ERROR"
  }

  var output = ""
  let charRange = (first: 65, last: 90)

  for item in message.utf8  {
    if (item < charRange.first || charRange.last > 90){
      return "ERROR"
    } 

    var charCode = Int(item) + inc
    
    if charCode > charRange.last {
       let diff = charCode - 90
       charCode = charRange.first + diff - 1
    }
  
    output += String(describing: UnicodeScalar(charCode)!)
  }

  return output
}

print(encode("ABC", 2))
print(encode("XZA", 3))