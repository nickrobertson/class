#week 1

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#print each
a.each {|e| puts e}
#print > 5
a.each {|e| puts e if 3 > 5}
#select requires boolean value
#prints array if true, if false empty array
a.select {|e| true}
#print odd
a.select{|e| odd?}
#object commands
3.class => Fixnum
3.methods => give you all methods availible
#add 11 to end of array
a << 11
#add 0 to beginning of array
a.unshift(0)
#remove last element
a.pop
#show all unique elements in array
a.uniq
#uniq! will mutate array


#debugging
require pry
#to call
binging.pry

#varible Scope
[1, 2, 3].each do |e|
  #these are available within the do end
  count = e
end
#count is not available outside the block
#variables outside of the do end are available

#Pass by reference / pass by value

#Pass by value
def some_method(str)
  str.changeit
  return new_str
end

outer_str = "hi"
outer_str = some_method("hi")

#Pass by reference
def some_method_1(str)
  str.changeit
end

out_str = 'hi'
some_method_1(out_str)

#ruby - need to mutate method
def some_methods(obj)
  # obj.uniq
  obj.uniq!
end

outer_obj = [1,2,2,3,3]
#outer_obj = some_methods(outer_obj)
some_methods(outer_obj)

puts outer_obj

#week 2