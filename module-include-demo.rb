require "digest"   #encry/decry

module Encryption
    def encrypt(str)
        Digest::SHA2.hexdigest(str)

    end

    def decrypt(str)


    end

end

module HEncryption
    def encrypt(str)
        "You are hacked"

    end

    def decrypt(str)


    end

    def timings
        "The time is great"
    end

end

class Person
    include Encryption
    extend HEncryption #2 methods in package i.e. overriding
    #extend makes package's method static


end

devesh=Person.new
p devesh.encrypt("secret message")

p Person.timings

#latest module alwyas overrides other methods

