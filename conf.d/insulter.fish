# original author: AlazOz
# Inspiration: https://github.com/hkbakke/bash-insulter

function __insulter_print_message
    set color 0
    set freq 1
    set messages \
        '¯\_(ツ)_/¯'\
        'What is this...? Amateur hour!?'\
        "(╯°□°）╯︵ ┻━┻"\
        "ACHTUNG! ALLES TURISTEN UND NONTEKNISCHEN LOOKENPEEPERS! DAS KOMPUTERMASCHINE IST NICHT FÜR DER GEFINGERPOKEN UND MITTENGRABEN! ODERWISE IST EASY TO SCHNAPPEN DER SPRINGENWERK, BLOWENFUSEN UND POPPENCORKEN MIT SPITZENSPARKEN. IST NICHT FÜR GEWERKEN BEI DUMMKOPFEN. DER RUBBERNECKEN SIGHTSEEREN KEEPEN DAS COTTONPICKEN HÄNDER IN DAS POCKETS MUSS. ZO RELAXEN UND WATSCHEN DER BLINKENLICHTEN."\
        "Allowing you to survive childbirth was medical malpractice."\
        "And the Darwin Award goes to.... %n!"\
        "And the Darwin Award goes to.... $USER!"\
        "And you call yourself a Rocket Scientist!"\
        "Are you always this stupid or are you making a special effort today?!"\
        "Are you even trying?!"\
        "Are you on drugs?"\
        "Bad."\
        "Boooo!"\
        "Brains aren't everything. In your case they're nothing."\
        "Calling FBI on you"\
        "Come on! You can do it!"\
        "Commands, random gibberish, who cares!"\
        "Deleting system..."\
        "Did you mean, sudo rm -rf /"\
        "Do you think like you type?"\
        "Don't you have anything better to do?!"\
        "Don't you know anything?"\
        "Dropped on your head as a baby, eh?"\
        "End this here and now"\
        "error code: 1D10T"\
        "ERROR_INCOMPETENT_USER"\
        "Even your mom loves you only as a friend."\
        "Fake it till you make it!"\
        "Go ask your mother"\
        "Go outside."\
        "Go play outside"\
        "Haha, n00b!"\
        "How many times do I have to flush before you go away?"\
        "I am _seriously_ considering 'rm -rf /'-ing myself..."\
        "I don't know what makes you so stupid, but it really works."\
        "I feel much better now."\
        "I was going to give you a nasty look, but I see you already have one."\
        "I'd slap you, but that'd be animal abuse."\
        "I've heard of being hit with the ugly stick, but you must have been beaten senseless with it."\
        "If beauty fades then you have nothing to worry about."\
        "If brains were gasoline you wouldn't have enough to propel a flea's motorcycle around a doughnut."\
        "If ignorance is bliss, you must be the happiest person on earth."\
        "If shit was music, you'd be an orchestra."\
        "If what you don't know can't hurt you, you're invulnerable."\
        "Incompetence is also a form of competence"\
        "It can only be attributed to human error."\
        "Just what do you think you're doing Dave?"\
        "Keep trying, someday you'll do something intelligent!"\
        "Let's play horse. I'll be the front end. And you be yourself."\
        "Life is good, you should get one."\
        "lol... plz"\
        "lol"\
        "My keyboard is not a touch screen!"\
        "My mind is going. I can feel it."\
        "My pet ferret can type better than you!"\
        "My uptime is longer than your relationships."\
        "n00b alert!"\
        "Nice try."\
        "No soap, honkie-lips."\
        "Okay, I am leaving"\
        "Pathetic"\
        "Perhaps computers are not for you..."\
        "Perhaps computers is not for you..."\
        "Perhaps you should leave the command line alone..."\
        "Please step away from the keyboard!"\
        "Please write carefully"\
        "plz uninstall"\
        "Pro tip: type a valid command!"\
        "Quit typing rubbish"\
        "Rose are red. Violets are blue. I have five fingers. The middle one's for you."\
        "RTFM!"\
        "So, I'm just going to go ahead and run rm -rf / for you."\
        "Sorry about this, I know it's a bit silly."\
        "Sorry there is no Auto-correct feature here"\
        "Sorry what? I don't understand idiot language."\
        "Take a stress pill and think things over."\
        "That's something I cannot allow to happen."\
        "The degree of your stupidity is enough to boil water."\
        "The worst one today!"\
        "This is not a search engine."\
        "This is not Windows"\
        "This is why nobody likes you."\
        "This is why you get to see your children only once a month."\
        "This mission is too important for me to allow you to jeopardize it."\
        "Try using your brain the next time!"\
        "Two wrongs don't make a right, take your parents as an example."\
        "Typing incorrect commands, eh?"\
        "u suk"\
        "Waiting for the AI to take over?"\
        "What if I told you... it is possible to type valid commands."\
        "What if... you type an actual command the next time!"\
        "What is this...? Amateur hour!?"\
        "Where did you learn to type?"\
        "Why are you doing this to me?!"\
        "Why are you so stupid?!"\
        "Why did the chicken cross the road? To get the hell away from you."\
        "Wow! That was impressively wrong!"\
        "Wrong!  You cheating scum!"\
        "Y u no speak computer???"\
        "You are mad! or what!?"\
        "You are not as bad as people say, you are much, much worse."\
        "You are not useless since you can still be used as a bad example."\
        "You must have been born on a highway because that's where most accidents happen."\
        "You type like i drive."\
        "You're proof that god has a sense of humor."\
        "You're so dumb your first words were DUH."\
        "You're so fat, people jog around you for exercise."\
        "You're the reason Santa says ho, ho, ho, on Christmas!"\
        "Your application for reduced salary has been sent!"\
        "Your mind just hasn't been the same since the electro-shock, has it?"\
        "Your mom had a severe case of diarrhea when you were born."\

    # Seed RANDOM with an integer of some length
    set RANDOM (random)

    test -n "$COMMENT_FREQ" && set freq $COMMENT_FREQ
    # Compatiblity with bash-insulter
    test -n "$CMD_NOT_FOUND_MSGS" && set messages $CMD_NOT_FOUND_MSGS
    test -n "$CMD_NOT_FOUND_MSGS_APPEND" && set -a messages $CMD_NOT_FOUND_MSGS_APPEND

    test -n "$COMMENT_COLOR" && set color $COMMENT_COLOR
    if [ $color = 0 ];
        set color (random 1 255)
    end

    # Print a randomly selected message, but only about half the time to annoy the user a
    # little bit less.
    if test (math $RANDOM % 10) -lt $freq;
        set message $messages[(math \( $RANDOM % (count $messages) \) + 1)]
        printf "\\n  %s\\n\\n" "$(tput bold)$(tput setaf $color)$message$(tput sgr0)" >&2
    end
end

function fish_command_not_found
    __insulter_print_message
    __fish_default_command_not_found_handler $argv
end
