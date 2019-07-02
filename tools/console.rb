require_relative '../config/environment.rb'

stef=Artist.new("stephanie",5)
eric=Artist.new("eric",8)
grace=Artist.new("grace",12)
zoe=Artist.new("zoe",16)
alice=Artist.new("alice",10)

aaa=Gallery.new("aaa","seattle")
bbb=Gallery.new("bbb","bellevue")
ccc=Gallery.new("ccc","kirkland")
ddd=Gallery.new("ddd","seattle")

p1=Painting.new("p1",10,aaa,stef)
p2=Painting.new("p2",20,aaa,eric)
p3=Painting.new("p3",30,bbb,grace)
p4=Painting.new("p4",40,ccc,stef)
p5=Painting.new("p5",50,ddd,zoe)
p6=Painting.new("p6",60,bbb,zoe)
p7=Painting.new("p7",70,aaa,alice)

zoe.create_painting("p8",80,bbb)











binding.pry

puts "Bob Ross rules."
