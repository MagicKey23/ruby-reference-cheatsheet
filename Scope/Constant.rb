#A constant is denoted syntactically by beginning the name with a capital letter. 

#A constant variable cannot be reassigned:

FOOD = "pho"
p FOOD # => "pho"

FOOD = "ramen"  #warning: already initialized constant FOOD
                #warning: previous definition of FOOD was here



#Can be mutate

FOOD = "pho"
FOOD[0] = "P"
p FOOD # => "Pho


#CONSTANT CAN EXIST IN GLOBAL SCOPE

FOOD = "pho"
$drink = "ice coffee"

def my_favorite
    p FOOD
    p $drink
end

my_favorite
