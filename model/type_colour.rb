module Type_Colour
    
    def self.dis(pk_type1)
        case pk_type1
            when "Normal"
                cl_type = :whitesmoke
            when "Fire"
                cl_type = :orangered
            when "Water"
                cl_type = :dodgerblue
            when "Electric"
                cl_type = :yellow
            when "Grass"
                cl_type = :green
            when "Ice"
                cl_type = :skyblue
            when "Fighting"
                cl_type = :burlywood
            when "Poison"
                cl_type = :slateblue
            when "Ground"
                cl_type = :peru
            when "Flying" 
                cl_type = :lightcyan
            when "Psychic"
                cl_type = :darkorchid
            when "Bug"
                cl_type = :yellowgreen
            when "Rock"
                cl_type = :saddlebrown
            when "Ghost"
                cl_type = :lavender
            when "Dragon"
                cl_type = :conrnflowerblue
        end
    end
end