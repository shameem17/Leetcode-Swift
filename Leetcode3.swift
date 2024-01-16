//problemm url: https://leetcode.com/problems/longest-substring-without-repeating-characters

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let n = s.count
        var dictionary: [Character: Int] = [:]
        var left: Int = 0
        var right: Int = 0
        var ans: Int = 0
        let startIdx = s.startIndex
        let endIdx = s.endIndex
        let str = [Character](s)
        while(right < n){
            var current: Character = str[right]
            if let num = dictionary[current]{
                if num == 0{
                    dictionary[current] = 1
                    ans = max(ans, right - left + 1)
                    right += 1
                }else{
                    let temp: Character = str[left]
                    dictionary[temp] = 0
                    left += 1 
                }
            }else{
                 dictionary[current] = 1
                    ans = max(ans, right - left + 1)
                    right += 1
            }
        }
        return ans
    }
}
