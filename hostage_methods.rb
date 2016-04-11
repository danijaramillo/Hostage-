module HostageMethods
	# Press Enter to Continue Method
	def press_enter(input)
		if input == "start"
			print text = "Press ENTER to START"
		else
			print text = "Press ENTER to CONTINUE"
		end

		enter_key = gets

		until enter_key == "\n"
			print text
			enter_key = gets
		end

	end

	#Sound Effects
	def lose_sound
		`afplay audio/you_lose.wav`
	end

	def missile_sound
		`afplay audio/missle.mp3`
	end

	def win_sound
		`afplay audio/you_win.wav`
	end

	def combo_win_sound
		`afplay audio/combo_win.mp3`
		`afplay audio/sigh.mp3`
	end

	def combo_sound
		`afplay audio/jab.mp3`
		`afplay audio/kick.mp3`
	end

	def upper_cut_sound
		`afplay audio/upper_cut.mp3`
	end

	#Run Intro Text
	def game_intro(hr)
		puts '
		______  __            _____                    ______
		___  / / /______________  /______ _______ ________  /
		__  /_/ /_  __ \_  ___/  __/  __ `/_  __ `/  _ \_  /
		_  __  / / /_/ /(__  )/ /_ / /_/ /_  /_/ //  __//_/
		/_/ /_/  \____//____/ \__/ \__,_/ _\__, / \___/(_)
		                                  /____/

		'
		#Play Intro Sound
		`afplay audio/metroid_door.mp3`

		puts "Welcome to Hostage!\nAn interactive Choose Your Own Adventure Game reminiscent of the classic 80s-90s series of books."

		press_enter("start")

		puts "Let the story begin:"
		puts hr

		puts """
You are a middle school student. While on the way to your class field trip to the Centers for Disease Control you and your class are accosted by the People’s Generic Army.

They trap you within the warehouse of the world’s deadliest diseases.

They show you and your classmates a projector presentation of the latest issue of their recruitment magazine. Coffee and light snacks are served. Their leader, Cortana, takes you aside and offers you two choices:

- 1: Go to People’s Generic Army Training School in Charleston, West Virginia
and become #1.
- 2: Leave the building and go home.

As you mull this over you come up with two more options:
- 3: Roundhouse kick Cortana, take his gun and save your classmates while yelling “‘Murica!”
- 4: Try a Mortal Combat combo move.

		"""
	end
end
