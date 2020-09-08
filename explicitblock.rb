def hug(message,config,&block)
    puts message,config
    p block #proc
    puts "{"
    block.call if block_given? #for not issuing error
    puts "}"
end

hug "meet me today for dinner","food studio" do
    puts "Sure,welcome!" #block
end

#& is used to convert block to proc and vice-a-versa
