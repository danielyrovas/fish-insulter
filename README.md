# fish-insulter

The Fish-Insulter is a fun utility that randomly teases or jests at the user when an incorrect command is typed. It is inspired from the [bash-insulter](https://github.com/hkbakke/bash-insulter) project to add a playful twist to Fish Shell!

**Disclaimer: No users were harmed during the making of this utility. 😄**

![Preview](https://github.com/Alaz-Oz/fish-insulter/assets/51114513/d4274be7-38ab-4696-be52-3ccf8ca7c934)

```fish
noob@fish:~ > sl

  Y u no speak computer???

fish: Unknown command: sl
noob@fish:~ > gti status

  This is why nobody likes you.

fish: Unknown command: gti
noob@fish:~ > sp aux

  Go outside.

fish: Unknown command: sp
noob@fish:~ > f

  n00b alert!

fish: Unknown command: f
```
### Features
- Offers humorous responses for mistyped commands.
- Customizable insult messages and frequency to match your style.
- Easy installation for the modern Fish shell, version 3.2.0 and above.

## Compatibility
- Compatible with Fish shell version `3.2.0` or higher.

## Installation

For [Fisher](https://github.com/jorgebucaran/fisher) users:
```fish
fisher install danielyrovas/fish-insulter
```

For [Oh My Fish (omf)](https://github.com/oh-my-fish/oh-my-fish) users:
```fish
omf install https://github.com/danielyrovas/fish-insulter
```

<details>
<summary>Manual Installation</summary>

For Single User:
```fish
git clone https://github.com/danielyrovas/fish-insulter.git fish-insulter
cp fish-insulter/conf.d/insulter.fish ~/.config/fish/conf.d/
```

</details>

Open a new Fish shell instance to enjoy the insults!

## Configuration

- **`insulter_color`**: text colour, a name (`brred`, `magenta`) or hex (`ff8800`). Unset gives a random colour.
```fish
set -U insulter_color brred
```

## Future enhancements
- **Angel Mode**: A kinder, supportive alternative.
- Improved customization options for a tailored experience.

### Similar Projects
- [bash-insulter](https://github.com/hkbakke/bash-insulter): For users of Bash or Zsh.

### Contribution and Feedback
We appreciate your input! If you have ideas to enhance this project or encounter any issues, please raise an issue or submit a pull request.

Remember, it's all in good fun! 😉 Feel free to drop by and say hi.
