puts %q!He said, "Don't speack"!     # ''でなくても %q!で代用可

h = 'hello'
puts %Q!Kai said "#{h}"!              # ""でなくても%Q!で代用可

b = 'bye'
puts %!Kai said "#{b}"!               # #!でも上記と同じ

puts %q?Kai said "Don't think!!!!"?   # こちらでもおk

puts %q{Kai said "Don't careful..."}  # {}で括るのもおk