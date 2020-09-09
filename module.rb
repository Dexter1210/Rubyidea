#used for namespacing
#use for storing reusbale/common code
#organisation of code

require_relative "./module/milesconverter" #for loading file

p LengthConversion.miles_to_feet(100)
p LengthConversion.miles_to_inches(200)

p LengthConversion::DISPLAY_TYPE #for accessing the constants in other file
