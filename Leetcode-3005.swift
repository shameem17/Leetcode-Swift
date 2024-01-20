//problem link: https://leetcode.com/problems/count-elements-with-maximum-frequency/description/

class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        var mx: Int = -1
        var ans: Int = 0
        for i in nums{
            if let cnt = dict[i]{
                dict[i]! += 1
            }else{
                dict[i] = 1;
            }

            if( dict[i]! > mx){
                mx = dict[i]!
            }
        }
        for (key,value) in dict{
            if(value == mx){
                ans += mx
            }
        }
        return ans
    }
}
