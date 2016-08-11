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
    def generate count
        fizz = is_fizz count
        buzz = is_buzz count
        fizz_or_buzz_or_count fizz, buzz, count
    end

    def fizz_or_buzz_or_count fizz, buzz, count
        result=0
        if fizz && buzz
            result = "FizzBuzz"
        elsif !fizz && !buzz
            result = count
        else
            result = 'Fizz' if fizz
            result = 'Buzz' if buzz
        end
        result
    end

    def is_fizz number
        can_be_fizz = false
        if number.is_a?(Numeric)
            can_be_fizz = true if number%3 == 0
        else
            can_be_fizz = true if number.index('3')
        end
        can_be_fizz
    end

    def is_buzz number
        can_be_buzz = false
        if number.is_a?(Numeric)
            can_be_buzz = true if number%5 == 0
        else
            can_be_buzz = true if number.index('5')
        end
        can_be_buzz
    end
end
