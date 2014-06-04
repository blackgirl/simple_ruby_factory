#!/usr/local/bin/ruby -

class Person

 attr_accessor :name, :sex
 
  	def initialize(name,sex) #Constructor
		@name = name
		@sex = sex
	end

	# def eyecolor=(eyecolor) #Setter
	# 	@eyecolor = eyecolor
	# end
 
	# def eyecolor #Getter
	# 	@eyecolor
	# end

    def greeting
    	case @sex
			when "man"
			  @greeting = "Let's get drunk!"
			when "woman"
			  @greeting = "You look great! Coffee?"
			when "another"
			  @greeting = "I don't have a clue who you are..."
			else
			  @greeting = "You gave me #{sex} -- I have no idea what to do with that."
		end
        puts "Hey #{@name}! #{@greeting}"
    end
    
end

def main()
	human = Person.new("Harry",'man')
	human.greeting

	human2 = Person.new("liza","woman")
	human2.greeting

	human3 = Person.new("Ololo","another")
	human3.greeting
end

main()