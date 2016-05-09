module VisitsHelper
    def getAvatarFromId id
        return id % 10
    end

    def getAvatarFromName name
        $v = 0
        name.each_byte do |c|
            $v = $v + c
        end
        return (($v / name.length) + 6) % 10
    end

    def getRandomAvatar
        return rand(9)
    end
end