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

end

class Person
    include Encryption
    include HEncryption


end

devesh=Person.new
p devesh.encrypt("secret message")

#latest module alwyas overrides other methods

