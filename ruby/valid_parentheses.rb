# LeetCode #20: Valid Parentheses (Ruby)
def is_valid(s)
    stack = []

    pairs = {
        ')' => '(',
        ']' => '[',
        '}' => '{'
    }

    s.each_char do |char|
        if ['(', '[', '{'].include?(char)
            stack.push(char)
        elsif [')', ']', '}'].include?(char)
            return false if stack.empty?

            top_plate = stack.pop
            return false if pairs[char] != top_plate
        end
    end 

    stack.empty?

end