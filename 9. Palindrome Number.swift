class Solution {
    func isPalindrome(_ x: Int) -> Bool {
    var number = x
    var reverseNumber = 0
    while number > 0 {
        let reminder = number % 10
        reverseNumber = reverseNumber * 10 + reminder
        number = number / 10
    }
    return x == reverseNumber    
}
}

print(Solution().isPalindrome(121))