# LeetCode #557: Reverse Words in a String III (Ruby)
def reverse_words(s)
    s.split(' ').map(&:reverse).join(' ')
end