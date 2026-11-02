# original author: AlazOz
# Inspiration: https://github.com/hkbakke/bash-insulter

function __insulter_print_message
    set -l messages

    # multiline ascii
    set -a messages \
        "\n(•_•)\n( •_•)>⌐■-■\n(⌐■_■)  command not found." \
        "\n _____________________\n< Command not found. >\n ---------------------\n        \   ^__^\n         \  (oo)\_______\n            (__)\       )\/\ \n                ||----w |\n                ||     ||" \
        "\n    __\n   /  \        It looks like you are trying\n   |  |        to type a command.\n   @  @\n   |  |        Would you like help?\n   || |/       [ No, they are hopeless ]\n   || ||\n   |\_/|\n   \___/" \
        "\n    _______\n   /       \ \n  |  R.I.P  |\n  |         |\n  |  your   |\n  |  last   |\n  | command |\n _|_________|_" \
        "\n┌──────────────────────────────┐\n│ ⚠  Fatal Error               │\n│                              │\n│   User not found.            │\n│                              │\n│          [ OK ]   [ Cry ]    │\n└──────────────────────────────┘" \
        "Calculating your IQ...\n[█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒] 3%\nDone." \
        ":(\nYour shell ran into a problem it couldn't handle: you.\nWe are just collecting some evidence, and then we will mock you.\n\n0% complete" \
        "A haiku for you:\n\n    Typed with confidence\n    the shell could not find your words\n    neither could your brain"

    # warhammer
    set -a messages \
        "+++ MESSAGE INTERCEPTED. HERETIC DETECTED: $USER +++" \
        "+++ THOUGHT FOR THE DAY: AN OPEN MIND IS LIKE A FORTRESS WITH ITS GATES UNBARRED +++" \
        "An Inquisitor has been dispatched to your location." \
        "Ave Imperator! Not you though." \
        "Blessed is the mind too small for doubt. You must be very blessed indeed." \
        "BURN THE HERETIC. KILL THE MUTANT. PURGE THE TYPO." \
        "Commissar on deck. Last chance to type a valid command." \
        "Error: +++ DIVIDE BY CUCUMBER +++ REDO FROM START +++" \
        "Even an Ork Grot could type better than you." \
        "Even the Nurglings are laughing at you." \
        "Exterminatus has been authorised for this terminal." \
        "Heresy grows from idleness. And from whatever that was." \
        "Hope is the first step on the road to disappointment. You knew that already." \
        "In the grim darkness of the far future, there is only typos." \
        "Innocence proves nothing. Your commands prove everything." \
        "Khorne cares not whence the typo flows." \
        "Machine Spirit offended. Apply sacred unguents and recite the Litany of Correct Syntax." \
        "Only in death does duty end. Only in typos does yours begin." \
        "Report to the nearest Commissar for summary execution." \
        "Sanctioned Psyker reports: there is nothing in that skull to read." \
        "The Emperor is not angry. He is merely disappointed." \
        "The Emperor protects. But not from this." \
        "This command is tainted by Chaos." \
        "Thought for the day: a small mind is easily filled with typos." \
        "Tzeentch saw that coming. Everyone did." \
        "WAAAGH! Even da boyz can spell betta den dat!" \
        "You have been demoted to Servitor. Please stop thinking." \
        "You have the tactical genius of a Gretchin with a stubber." \
        "Your soul has been weighed and found wanting. So has your typing." \
        "Your typing is an affront to the Omnissiah." \
        "The machine spirits are displeased. Light incense and try again."

    # others
    set -a messages \
        "¯\_(ツ)_/¯" \
        "(╯°□°）╯︵ ┻━┻" \
        ಠ_ಠ \
        "(ノಠ益ಠ)ノ彡┻━┻" \
        "┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻" \
        "ʕノ•ᴥ•ʔノ ︵ ┻━┻  even the bear is done with you" \
        "┬─┬ノ( º _ ºノ)  put the table back. then step away from the keyboard." \
        "(╯°□°)╯︵ ʎɹɐuoᴉʇɔᴉp ɐ ʎnq" \
        "(☞ﾟヮﾟ)☞  idiot  ☜(ﾟヮﾟ☜)" \
        "ლ(ಠ益ಠლ)  but why?" \
        "(－‸ლ)" \
        "༼ つ ◕_◕ ༽つ  give valid command" \
        "(ノ◕ヮ◕)ノ*:・ﾟ✧  wrong again!  ✧ﾟ・: *ヽ(◕ヮ◕ヽ)" \
        "><(((º>  even the fish is embarrassed." \
        "♪ wah ♪ wah ♪ wahhhhhh ♪" \
        "ACHTUNG! ALLES TURISTEN UND NONTEKNISCHEN LOOKENPEEPERS! DAS KOMPUTERMASCHINE IST NICHT FÜR DER GEFINGERPOKEN UND MITTENGRABEN! ODERWISE IST EASY TO SCHNAPPEN DER SPRINGENWERK, BLOWENFUSEN UND POPPENCORKEN MIT SPITZENSPARKEN. IST NICHT FÜR GEWERKEN BEI DUMMKOPFEN. DER RUBBERNECKEN SIGHTSEEREN KEEPEN DAS COTTONPICKEN HÄNDER IN DAS POCKETS MUSS. ZO RELAXEN UND WATSCHEN DER BLINKENLICHTEN." \
        0xDEADBRA1N \
        "404: Brain not found." \
        "Achievement unlocked: 'Still Can't Type'" \
        "Allowing you to survive childbirth was medical malpractice." \
        "And the Darwin Award goes to.... $USER!" \
        "And you call yourself a Rocket Scientist!" \
        "Are you always this stupid or are you making a special effort today?!" \
        "Are you even trying?!" \
        "Are you on drugs?" \
        "Bad." \
        "Boooo!" \
        "Brains aren't everything. In your case they're nothing." \
        "BREAKING NEWS: Local user $USER fails to type command. More at 11." \
        "Calling FBI on you" \
        "Calling your mother. She is not surprised." \
        "chmod 000 $USER" \
        "Come on! You can do it!" \
        "Commands, random gibberish, who cares!" \
        "Dear diary, today $USER tried to type a command. It did not go well." \
        "Deleting system..." \
        "Did you mean, sudo rm -rf /" \
        "Did your cat walk across the keyboard again?" \
        "Do you think like you type?" \
        "Don't you have anything better to do?!" \
        "Don't you know anything?" \
        "Downloading more RAM for you ... 0% complete." \
        "Dropped on your head as a baby, eh?" \
        E_TOO_MANY_FINGERS_NOT_ENOUGH_BRAIN \
        "End this here and now" \
        "Error 418: I'm a teapot, and even I know that's not a command." \
        "error code: 1D10T" \
        "Error: Success." \
        ERROR_INCOMPETENT_USER \
        "ERROR_PEBKAC: Problem Exists Between Keyboard And Chair" \
        "Even tab-complete has given up on you." \
        "Even your mom loves you only as a friend." \
        "Exception in thread main: java.lang.UserIsAnIdiotException" \
        "Fake it till you make it!" \
        "FATAL: user.brain is null" \
        "Git blame says it was you. Always has been." \
        "Go ask your mother" \
        "Go outside." \
        "Go play outside" \
        "Haha, n00b!" \
        "Have you considered a career in interpretive dance instead?" \
        "Hello, IT. Have you tried forcing an unexpected reboot?" \
        "How many times do I have to flush before you go away?" \
        "I am _seriously_ considering 'rm -rf /'-ing myself..." \
        "I don't know what makes you so stupid, but it really works." \
        "I feel much better now." \
        "I was compiled for this?" \
        "I was going to give you a nasty look, but I see you already have one." \
        "I'd slap you, but that'd be animal abuse." \
        "I'm not angry. I'm just disappointed." \
        "I've consulted the ancient scrolls. That command does not exist in any timeline." \
        "I've heard of being hit with the ugly stick, but you must have been beaten senseless with it." \
        "I've seen better commands from a broken toaster." \
        "I've seen smarter input from /dev/random." \
        "If beauty fades then you have nothing to worry about." \
        "If brains were gasoline you wouldn't have enough to propel a flea's motorcycle around a doughnut." \
        "If ignorance is bliss, you must be the happiest person on earth." \
        "If shit was music, you'd be an orchestra." \
        "If what you don't know can't hurt you, you're invulnerable." \
        "Impressive. Every single keystroke was wrong." \
        "In Soviet Russia, command types YOU." \
        "Incompetence is also a form of competence" \
        "Initiating self-destruct sequence. 3... 2... just kidding. Or am I?" \
        "Is this a command or a cry for help?" \
        "It can only be attributed to human error." \
        "Just what do you think you're doing Dave?" \
        "Keep trying, someday you'll do something intelligent!" \
        "Kernel panic: user detected." \
        "Let's play horse. I'll be the front end. And you be yourself." \
        "Life is good, you should get one." \
        "lol... plz" \
        lol \
        "Maybe try a career that doesn't involve keyboards?" \
        "My CPU is getting dizzy reading that." \
        "My keyboard is not a touch screen!" \
        "My mind is going. I can feel it." \
        "My pet ferret can type better than you!" \
        "My uptime is longer than your relationships." \
        "n00b alert!" \
        "Nice command. Shame it doesn't exist." \
        "Nice try." \
        "No soap, honkie-lips." \
        "Okay, I am leaving" \
        "Ooga booga. Is that better? Do you understand me now?" \
        "Ouch. That one hurt to parse." \
        "panic: runtime error: invalid memory address or brain dereference" \
        Pathetic \
        "Perhaps computers are not for you..." \
        "Perhaps you should leave the command line alone..." \
        "Please step away from the keyboard!" \
        "Please write carefully" \
        "plz uninstall" \
        "Pro tip: type a valid command!" \
        "Quit typing rubbish" \
        "Rose are red. Violets are blue. I have five fingers. The middle one's for you." \
        "RTFM!" \
        "Run that again and I start mining crypto on your GPU." \
        "SIGSTUPID received. Dumping user." \
        "So, I'm just going to go ahead and run rm -rf / for you." \
        "Somewhere in Finland, Linus Torvalds just sighed." \
        "Somewhere, a sysadmin just felt a disturbance in the force." \
        "Sorry about this, I know it's a bit silly." \
        "Sorry there is no auto-correct feature here" \
        "Sorry what? I don't understand idiot language." \
        "sudo make me a sandwich? No. Not you. Never you." \
        "Take a stress pill and think things over." \
        "Task failed successfully." \
        "That's something I cannot allow to happen." \
        "The degree of your stupidity is enough to boil water." \
        "The man pages are free, you know." \
        "The penguins are laughing at you." \
        "The shell has filed a restraining order." \
        "The worst one today!" \
        "There's a tab key. It's on the left. Use it." \
        "This incident will be reported to Santa." \
        "This is not a search engine." \
        "This is not Windows" \
        "This is why nobody likes you." \
        "This is why you get to see your children only once a month." \
        "This mission is too important for me to allow you to jeopardize it." \
        "Traceback (most recent call last): You." \
        "Try using your brain the next time!" \
        "Two wrongs don't make a right, take your parents as an example." \
        "Typing incorrect commands, eh?" \
        "Typing with your elbows again?" \
        "u suk" \
        "Uncaught TypeError: $USER is not a function" \
        "Upgrading user to v2.0... FAILED: incompatible hardware." \
        "Waiting for the AI to take over?" \
        "WARNING: Stupidity levels exceeding safe limits. Evacuate the terminal." \
        "Were you aiming for the keyboard at all?" \
        "What if I told you... it is possible to type valid commands." \
        "What if... you type an actual command the next time!" \
        "What is this...? Amateur hour!?" \
        "Where did you learn to type?" \
        "Who gave you shell access?" \
        "Why are you doing this to me?!" \
        "Why are you so stupid?!" \
        "Why did the chicken cross the road? To get the hell away from you." \
        "Wow! That was impressively wrong!" \
        "Wrong!  You cheating scum!" \
        "Y u no speak computer???" \
        "You are mad! or what!?" \
        "You are not as bad as people say, you are much, much worse." \
        "You are not useless since you can still be used as a bad example." \
        "You miss 100% of the commands you mistype." \
        "You must have been born on a highway because that's where most accidents happen." \
        "You type like i drive." \
        "You type like you're wearing oven mitts." \
        "You're proof that god has a sense of humor." \
        "You're so dumb your first words were DUH." \
        "You're so fat, people jog around you for exercise." \
        "You're the human equivalent of a merge conflict." \
        "You're the reason Santa says ho, ho, ho, on Christmas!" \
        "You've been reported to the sudoers file." \
        "Your ancestors survived plagues and wars so you could type that." \
        "Your application for reduced salary has been sent!" \
        "Your command has been forwarded to /dev/null." \
        "Your git history must be a crime scene." \
        "Your keyboard deserves a better owner." \
        "Your keyboard has filed for divorce. It wants the mouse." \
        "Your mind just hasn't been the same since the electro-shock, has it?" \
        "Your mom had a severe case of diarrhea when you were born." \
        "Your PATH leads nowhere, much like your career." \
        "Your terminal has been reported to Interpol." \
        "Ze komputer sez NEIN!"

    # Walk a seeded shuffle of the messages
    set -l n (count $messages)
    if not set -q __insulter_index; or test $__insulter_index -ge $n
        set -U __insulter_index 0
        set -U __insulter_seed (random)
    end
    set -l reseed (random)
    random $__insulter_seed
    set -l order (for i in (seq $n); echo (random) $i; end | sort -n | string split -f2 ' ')
    random $reseed
    set -l selected $order[(math $__insulter_index + 1)]
    set -U __insulter_index (math $__insulter_index + 1)

    set -l message (string replace -a '\n' '\n  ' -- $messages[$selected])
    set -l color (printf '%06x' (random 0 16777215))
    set -q insulter_color; and set color $insulter_color
    printf "\n  %s%b%s\n\n" (set_color --bold $color) $message (set_color normal) >&2
end

function fish_command_not_found
    __insulter_print_message
    __fish_default_command_not_found_handler $argv
end
