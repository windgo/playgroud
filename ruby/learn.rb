#赋值
=begin
# 局部变量
局部变量都是小写字母
=end
v="你好,世界"
puts v

# 局部变量的作用域
# block,块, 会创建新的作用域
1.times do
  a=1
  puts "块内的局部变量有: #{local_variables.join}"
end
puts "块外的局部变量有: #{local_variables.join}"

#局部变量和方法

a=0 if false #没有赋值, 只要出现赋值语句, 会创建局部变量
p local_variables
p a

def big_caculation
  42
end

big_caculation=big_caculation()
p big_caculation #变成了变量, 而不是方法, 需要调用 self.big_caculation

#p b if b = 0.zero? #会报错, b还没有产生

#实例变量
class C
  def initialize(value)
    @ins_var=value
  end
  
  def value
    @ins_var
  end
end

ob1=C.new "实例值1"
ob2=C.new "实例值2"
p ob1.value
p ob2.value

#类变量, 在类的层级的变量 , C++, Swift里都有的static变量  
class A
  @@class_var=0
  def value
    @@class_var
  end
  def update
    @@class_var = @@class_var+1
  end
end

class B<A
  def update
    @@class_var=@@class_var+2
  end
end

a=A.new
b=B.new
a.update
b.update
p "a的值是#{a.value}"
p "b的值是#{b.value}"

#全局变量
$global_var=0
p $global_var

#赋值方法
class CC
  def value=(value)
    @value=value
  end
end

c = CC.new
c.value = 23

class CB
  attr_accessor:haha
  def addHaha
    @haha = @haha +1
  end
end

cb=CB.new
cb.haha=3
cb.addHaha
p cb.haha

a = 1,2,3
p a

a= 1,*[2,3,4,5]
p a

a,b="haha","hehe"
p a,b

a,b=1,2,3
p a,b
a,*b=1,2,3,4
p a,b
*a,b=1,2,3,4
p a,b
# *a,*b=1,2,3,4 错误的赋值 
# p a,b
(a,b)=1,2
p a,b
(a,b)=[1,2]
p a,b
