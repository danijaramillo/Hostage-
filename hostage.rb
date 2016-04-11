# Hostage! A Terminal based interactive Choose Your Own Adventure Game (All sounds from http://soundbible.com & http://www.freesound.org/)
# Download the audio files here: https://www.dropbox.com/sh/d4h5f36nwy4pw3j/AADjkh_ZLf9PK8cltX8ZUahTa?dl=0
# Once downloaded them place them in a folder named "audio" in the same directory as this game and start playing!

# variables
invalid_entry = "INVALID ENTRY TRY AGAIN"
thanks = "\nThanks for Playing! 👏 👏 👏 👏"
meet_cortana1 = "Upon entering the Cortana’s study, he smiles. As he open’s his mouth to speak..."
meet_cortana2 = "the room erupts in flames.🔥 🔥 🔥\nNorth Korea finally launched a successful ballistic missile. 🚀️"
hr = "______________________________________________________________________________"
end_game = false

require './hostage_methods.rb'
include HostageMethods

until end_game
	game_intro(hr)
	puts choose_one = "What do you choose?\nType \“train\” for option 1, type \“leave\” for option 2, type \“roundhouse\” for option 3 or type \"combo\" for option 4"

	option = gets.chomp.downcase.strip
	valid_options = ["train", "leave", "roundhouse", "combo"]

	until valid_options.include?(option)
		puts invalid_entry
		puts choose_one
		option = gets.chomp.downcase.strip
	end


	case option
	when "train"
		puts hr
	    puts """
	You decide to train in Charleston, West Virginia. As you move up the ranks, you gain favor with Cortana,he invites you to his estate.

	You realize you might be able to save the US by taking down Cortana, I mean the People’s Generic Army is not very good at making burgers so why support them? Or... you could move up in rank and start you own People’s Generic Army Burger Training School.
		"""
		puts choose_train = "You have two options here, type “kill” to hide a gun on your member and take down Cortana. Type “rank up” to schmooze Cortana and gain more favor with him."
		option = gets.chomp.downcase.strip

		until option == "kill" || option == "rank up"
			puts invalid_entry
			puts choose_train
			option = gets.chomp.downcase.strip
		end

		if option == "kill"
			puts hr
			`afplay audio/chamber_and_heart.mp3`

			puts meet_cortana1
			press_enter("continue")

			missile_sound
			puts meet_cortana2

			lose_sound
			puts thanks
		else
			puts hr
			puts meet_cortana1

			press_enter("continue")

			missile_sound
			puts meet_cortana2

			lose_sound
			puts thanks
		end

	when "leave"
	    puts hr
	    puts "You walk out and get stopped by the CDC security staff. They rightly are strongly suspect of you with your JanSport backpack and budding acne. You get pulled aside for questioning.\nThey ask you if you are part of the People’s Generic Army."
	    puts choose_leave = "You can type “yes” to claim that you are part of the People’s Generic Army or type “no” to deny any affiliation with the People’s Generic Army."
	    option = gets.chomp.downcase.strip

		until option == "no" || option == "yes"
		    puts invalid_entry
		    puts choose_leave
		    option = gets.chomp.downcase.strip
		end

		if option == "no"
		    puts hr
		    puts "They disbelieve you, you immediately get detained and sent to a holding cell. Due to a programmer’s mistake you are never added to the correctional facilitie's CMS. You get forgotten about and slowly go insane.\nSurprisingly you were on the list for Taco Tuesdays 🌮 🌮  every week, so at least you had that going for you."

		    press_enter("continue")
		    lose_sound
		    puts thanks

				puts hr
				game_do = ""
				until game_do == "yes" || game_do == "no"
					puts "Would you like to play again?\nType \"yes\" to play again or type \"no\" to exit the game."
					game_do = gets.chomp.downcase.strip
				end

				if game_do == "yes"
					puts hr
					next
				else
					puts hr
					puts "Good Bye!"
					puts hr
					exit
				end
		else
		    puts hr
		    puts "They disbelieve you and laugh at a good joke. They offer to take you home and they also invite you to go out for drinks with them."
		    puts choose_yes = "Type “home” to go home or type “drinks” to go out for drinks."
		    option = gets.chomp.downcase.strip
		end

		until option == "home" || option == "drinks"
		    puts invalid_entry
		    puts choose_yes
		    option = gets.chomp.downcase.strip
		end

		if option == "home"
		    puts hr
		    puts "They take you home and you carry on your life. You become a manager of your local McDonald’s and you couldn’t be happier."

		    press_enter("continue")
		    win_sound
		    puts thanks
		else
		    puts hr
		    puts "They take you out for drinks, you enjoy the finest fresh water you have ever tasted and you now have a great story for your friends.\nExcept you left your friends behind and they're dead now..."

		    press_enter("continue")
		    win_sound
		    puts thanks
		end
	when "roundhouse"
	    puts hr
	    puts "You recall Chuck Norris’ style and finesse in that YouTube video you watched once. You jump up and slowly realize that YouTube might be a terrible place to learn Martial Arts. As your foot gets closer, you muster up your warrior cry of \“ ‘mu- \"\n\nYour words get cut short as Cortana stabs you in the gut. You fall down and slowly bleed out."
	   	# press_enter("continue")
	   	puts "\nDon't worry, Chuck Norris would have been proud."


	  	press_enter("continue")
	  	`afplay audio/thats_ok.mp3`
	    puts '''

	                              .&@@@@@@@@@@@@@&
	                             &@@@@@@@@@@@@@@@@@#
	                           ,@@@@@@@@@@@@@@@@@@@@@,
	                          /@@@@@@@@@@@@@@@@@@@@@@@(
	                         .@@@@@@@@@@@@@@@@@@@@@@@@@&
	                         &@@@@@@@@@@@@@@@@@@@@@@@@@@@,
	                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*
	      ,(@@@@@@@@@%#(((/*%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(
	   &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.
	  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
	 %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%
	 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*
	 %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&
	 .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &@@@@@@@@@% *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	  (@@@@@@@@@@@@@@@@@@@@@( ,@@@@@@*   .@@@@@&.     .%@@@@@@@@@@@@@@@@@@@@@@@@@@
	   #@@@@@@@@@@@@@@@@@@% *@@@&@@@.      ...,*/&.     *@@@@@@@@@@@@@@@@@@@@@@@@%
	    #@@@@@@@@@@@@@@@@@,.&    ,@.                     @@@@@@@@@@@@@@@@@@@@@@@@.
	     *@@@@@@@@@@@@@@@@.      .,                      @@@@@@@@@@@@@@@@@@@@@@@/
	       #@@@@@@@@@@@@@@.                             .@@@@@@@@@@@@@@@@@@@@@@/
	         #@@@@@@@@@@@@       .   ,#,                @@@@% #(@@@@@@@@@@@@@@*
	           *@@@@@@@@@@       %@@@.                 @@@@     &@@@@@@@@@@@@
	              #@@@@@@@      #@@@@@@&(             .@@@,(   #@@@@@@@@@@@(
	                 #@@@@,   #@@@@@@@@@@@@@*         &@@&    /@@@@@@@@@@*
	                   #@@* /@@@@@@((@@@@@@@@/    *@@@@#   .@@@@@@@@(
	                     &@.@@&.            *@@@. /@@@@@@, *@@@@@@@,
	                     .@@@@,               @@@@@@@@@@@ @@@@@@@@#
	                      @@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@ %@@@@@@@,
	                      #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  #@@@@@@@&
	                       &@@@@@@@@@@@@@@@@@@@@@@@@@@(     #@@@@@#
	                        &@@@@@@@@@@@@@@@@@@@@@@@(     /@@@@@@@@
	                          (@@@@@@@@@@@@@@@@@@@,      &@@@@@@&
	                             .@@@@@@@@@@@&(        /@@@@@@@@/
	                                                 *@@@@@@@@@@@#
	                           @@(                 (@@@@@@@@@@@@@@%
	                         &@@@@       /&@,    &@@@@@@@@@@@@@@@@@.
	                      ,@@@@@@@/     ,,    /@@@@@@@@@@@@@@@@@&
	                    *@@@@@@@@@@        .@@@@@@@@@@@@@@@@@@,
	    '''

			puts thanks

		when "combo"

			puts hr
			print "Type a random sequence of characters to initiate your combo: "
			combo = gets.chomp
			combo_value = combo.length + 3
			combo_move_value = rand(combo_value)

			if combo_move_value > 7
				combo_win_sound
				puts hr
				puts "Your move of #{combo} is very effective! It was worth #{combo_move_value} hit points!\nCortana has fainted and you have saved your classmates!"
				sleep(5)
				win_sound
				puts thanks
			elsif combo_move_value > 4
				combo_sound
				puts hr
				puts "Your move of #{combo} is OK, but it was only worth #{combo_move_value} hit points.\nCortana has stepped back. He pulls out his gun and shoots you."
				sleep(5)
				lose_sound
				puts thanks
			else
				upper_cut_sound
				puts hr
				puts "Your move of #{combo} is terrible, a pitiful #{combo_move_value} hit points.\nAfter your upper cut, Cortana beat you with the butt of his gun and fed you to his dog."
				sleep(5)
				lose_sound
				puts thanks
			end

	end

	#loop game
	puts hr
	game_do = ""
	until game_do == "yes" || game_do == "no"
		puts "Would you like to play again?\nType \"yes\" to play again or type \"no\" to exit the game."
		game_do = gets.chomp.downcase.strip
	end

	if game_do == "yes"
		puts hr
		end_game = false
	else
		end_game = true
		puts hr
		puts "Good Bye!"
		puts hr
	end
end
