# Challenge 5.4 - NESTED DATA STRUCTURES


# band is a hash with:

# a drummer key with an array value of instrument components
# a guitarists key with a guitarist1 / guitarist2 array value
  # guitarist1 is a hash with
    # guitarist1holds (what instruments components are held) key with array value of instrument components
    # guitarist1atfeet (what instrument components are at feet) key with array value of instrument components
  # guitarist2 is a hash with
    # guitarist2holds (what instruments components are held) key with array value of instrument components
    # guitarist2atfeet (what instrument components are at feet) key with array value of instrument components
# a singer key with an array value of instrument components
# a bassists key with a bassist1 / bassist2 array value
  # bassist1 is a hash with
    # bassist1holds (what instrument components are held) key with array value of instrument components
    # bassist1atfeet (what instrument components are at feet) key with array value of instrument components
  # bassist2 is a hash with
    # bassist2holds (fivesb is five-string bassist) (what instruments components are held) key with array value of instrument components
    # bassist2atfeet (what instrument components are at feet) key with array value of instrument components

# band hash
band = {

  # drummer key/value pair. value is an array
  drummer: [
    'drumsticks',
    'kick drums',
    'snare drum',
    'cymbals'
    ],

  # guitarists key/value pair. value is an array
  guitarists: [

    # guitarist1 is a hash inside value array of guitarists key inside band hash (hash inside array inside hash)
    guitarist1 = {

      # guitarist1holds key/value pair. value is an array
      guitarist1holds: [
        'acoustic guitar',
        'pick'
        ],

      # guitarist1atfeet key/value pair. value is an array
      guitarist1atfeet: [
        'guitar FX pedal',
        'amp'
        ]
      },

    # guitarist2 is a hash inside value array of guitarists key inside band hash (hash inside array inside hash)
    guitarist2 = {

      # guitarist2holds key/value pair. value is an array
      guitarist2holds: [
        'electric guitar',
        'pick'
        ],

      # guitarist2atfeet key/value pair. value is an array
      guitarist2atfeet: [
        'guitar FX pedal',
        'amp'
        ]
      }
    ],

  # singer key/value pair. value is an array
  singer: [
    'microphone 1',
    'microphone stand',
    'vocal FX pedal'
    ],

  # bassist key value pair. value is an array
  bassists: [

    # bassist1 is a hash inside value array of bassists inside band hash (hash inside array inside hash)
    bassist1 = {

      # bassist1holds key/value pair. value is an array
      bassist1holds: [
        '4-string bass guitar',
        'pick 1',
        'pick 2'
        ],

      # bassist1atfeet key/value pair. value is an array
      bassist1atfeet: [
        'bass FX pedal',
        'bass amp'
        ]
      },

    # bassist2 is a hash inside value array of bassists inside a hash (hash inside array inside hash)
    bassist2 = {

      # bassist2holds key/value pair. value is an array
      bassist2holds: [
        '5-string bass guitar',
        'pick',
        'microphone 2'
        ],

      # bassist2atfeet key/value pair. value is an array
      bassist2atfeet: [
        'bass FX pedal',
        'bass amp'
        ]
      }

    ]
}

# should print "kick drums"
p band[:drummer][1]

# should add 'wires' to the guitarist2atfeet: value array
p band[:guitarists][1][:guitarist2atfeet].push('wires')

# should print the reverse the value array of bassist1holds: 
p band[:bassists][0][:bassist1holds].reverse

# should print each value of the array of the guitarist2 hash (with added "wires")
band[:guitarists][1].each do |key, value|
  puts value
end

