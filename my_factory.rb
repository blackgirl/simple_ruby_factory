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
				Man.new(@name, @greeting).dialog
			when "woman"
			    @greeting = "You look great! Coffee?"
			    Woman.new(@name, @greeting).dialog
			when "another"
			  	puts @greeting = "I don't have a clue who you are..."
			else
			  	puts @greeting = "You gave me #{sex} -- I have no idea what to do with that."
		end
    end
    
end

class Woman
	attr_accessor :name, :question, :answer

  	def initialize(name,question) #Constructor
		@name = name
		@question = question
	end

	def dialog
		@answer = "No, thanks. I'd rather drink some tea with milk."
		puts "Hey #{@name}! #{@question} #{@answer}"
	end

end

class Man
	attr_accessor :name, :question, :answer

  	def initialize(name,question) #Constructor
		@name = name
		@question = question
	end

	def dialog
		@answer = "Hell yeah, bro!"
		puts "Hey #{@name}! #{@question} #{@answer}"
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