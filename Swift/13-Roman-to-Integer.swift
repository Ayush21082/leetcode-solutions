class Solution {
    var result = Int()

    func romanToInt(_ s: String) -> Int {
        let length = s.count
        var values: Int = 0
        if length >= 1 && length <= 15 {
            for i in 0 ... length - 1 {
                let index = getStringIndex(s,i)
                    let character = s[index]
                    switch character {
                        case "I" :
                            values = 1
                            result = calcuate(i, s, values, true)
                        case "V": 
                            values = 5
                            result = calcuate(i, s, values)
                        case "X": 
                            values = 10
                            result = calcuate(i, s, values, true)
                        case "L": 
                            values = 50
                            result = calcuate(i, s, values)
                        case "C": 
                            values = 100
                            result = calcuate(i, s, values, true)
                        case "D": 
                            values = 500
                            result = calcuate(i, s, values)
                        case "M": 
                            values = 1000
                            result = calcuate(i, s, values)
                        default :
                            break
                    }
                
            }
        }
        return result
    }
    func calcuate(_ address: Int,_ s: String,_ values: Int,_ isInstance: Bool = false) -> Int {
        if isInstance && address != s.count - 1 {
            result = validation(s, address, values)
            print("sub")
        }else{
            result += values
            print("add")
        }

        print("result: ", result)

        return result
    }
    func validation(_ s: String, _ address: Int,_ values: Int) -> Int {
        let index = getStringIndex(s,address+1)
        if s[index] == "V" || s[index] == "X" ||  s[index] == "L" || s[index] == "C" || s[index] == "D" || s[index] == "M"{
            result -= values
        }
        
        return result
    }

    func getStringIndex(_ s: String,_ offsetBy: Int) -> String.Index {
        let index = s.index(s.startIndex, offsetBy: offsetBy)
        return index
    }
}

print(Solution().romanToInt("II"))
