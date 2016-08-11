# 全班同学按座位顺序，从1开始报数；
#        当某个数是3的倍数时，改说Fizz；
#        当某个数是5的倍数时，改说Buzz；
#        当某个数既是3的倍数，又是5的倍数时，改说FizzBuzz。
# 程序员的你，准备提前打印好任意正数以内的Fizz Buzz序列，好让自己在同学们面前有上佳表现，又不至于出错。

# 只是其中部分条件变成了：
#         当某个数是3的倍数，或字面值包含3时，改说Fizz；
#         当某个数是5的倍数，或字面值包含5时，改说Buzz；
#
# 完成后，请把作业上传至github，链接请发slack私信。
# 下次课程将进行统一检查。
class FizzBuzz
    def generate counts
        results = []
        (1..counts).each do |count|
            if count.is_a?(Numeric)
                if is_fizz count
                    results.push 'Fizz'
                elsif count%5 == 0
                    p 'Buzz'
                else
                    results.push count
                end
            end
        end if counts.to_i != 0

        if counts.is_a?(String)
            results.push 'Fizz' if is_fizz_for_string counts
            if counts.index('5')
                p 'Buzz'
            end
        end
        results.join(' ')
    end

    def is_fizz number
        return true if number%3 == 0
        false
    end

    def is_fizz_for_string number
        return true if number.index('3')
        false
    end
end
