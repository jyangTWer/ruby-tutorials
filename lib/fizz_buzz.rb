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
def fizz_buzz params
  if params.is_a?(Numeric)
    if params%3 == 0
      p 'Fizz'
    elsif params%5 == 0
      p 'Buzz'
    end
  elsif params.is_a?(String)
    if params.index('3') != nil
      p 'Fizz'
    elsif params.index('5') != nil
      p 'Buzz'
    end
  end
end

fizz_buzz 'abc5'