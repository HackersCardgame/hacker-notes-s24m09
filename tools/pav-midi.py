import mido
import os

RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
BLUE = "\033[34m"
DEFAULT = "\033[0m"

i = 0

print(f"{BLUE}Midi-Eingänge{DEFAULT}:")
for port in mido.get_input_names():
  print(RED + str(i) + ": " + DEFAULT + port)
  i += 1

print()
print()
print()
print()
print(f"{BLUE}Midi-Ausgänge{DEFAULT}:")
for port in mido.get_output_names():
  print(RED + str(i) + ": " + DEFAULT + port)
  i += 1



x="""
def set_volume(source_index, volume) :
os.system(f"pactl set-source-volume {source_index} {volume}%" )

# Set up your MIDI input device (adjust accordingly)
midi_input = mido.open_input('Your MIDI Device Name')

for msg in midi_input:
if msg.type == 'control_change' # Filter for fader controls
volume = int(msg.value * 10@ / 127) # Convert MIDI value (0-127) to percentage (0-100)
set_volume(®@, volume) # Here source_index @ is used, adjust as necessary"""
